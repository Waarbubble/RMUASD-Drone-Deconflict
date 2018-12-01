#include <DroneDeconflict.hpp>
#include <iostream>
#include <math.h>
#include <cmath> 
#include <ctime>

using namespace std;
#define earthRadiusKm 6371.0

// This function converts decimal degrees to radians
double deg2rad(double deg) {
  return (deg * M_PI / 180);
}

//  This function converts radians to decimal degrees
double rad2deg(double rad) {
  return (rad * 180 / M_PI);
}

// This function returns distance in meters between two GPS coordinates
double GPSdistanceMeters(drone_decon::GPS pos1, drone_decon::GPS pos2) {
  double lat1r, lon1r, lat2r, lon2r, u, v;
  lat1r = deg2rad(pos1.latitude);
  lon1r = deg2rad(pos1.longitude);
  lat2r = deg2rad(pos2.latitude);
  lon2r = deg2rad(pos2.longitude);
  u = sin((lat2r - lat1r)/2);
  v = sin((lon2r - lon1r)/2);
  return 1000*(2.0 * earthRadiusKm * asin(sqrt(u * u + cos(lat1r) * cos(lat2r) * v * v)));
}

double UTMdistance(UTM pos1, UTM pos2){
    if(pos1.zone == pos2.zone){
        return std::sqrt(
            std::pow(pos1.east-pos2.east,2)+
            std::pow(pos1.north-pos2.north,2)
        );
    }else{
        //TODO 
    }
}

drone_decon::GPS UTM2GPS(UTM coord){
  drone_decon::GPS ret;
  Geo::UTMtoLL(coord.north,coord.east,coord.zone,ret.latitude,ret.longitude);
  ret.altitude=coord.altitude;
  return ret;

}
UTM GPS2UTM(drone_decon::GPS coord){
  UTM ret;
  Geo::LLtoUTM(coord.latitude,coord.longitude,ret.north,ret.east,ret.zone);
  ret.altitude = coord.altitude;
  return ret;
}

direction operator*(direction lhs, const double& rhs){
    lhs.east*rhs;
    lhs.north*rhs;
    return lhs;
}
UTM operator+(UTM lhs, const direction& rhs){
    lhs.east+rhs.east;
    lhs.north+rhs.north;
    return lhs;
}

UTM& UTM::operator +=(const direction& b){
    this->east+=b.east;
    this->north+=b.north;
    return *this;
}

//################### SimpleDrone ######################
simpleDrone::simpleDrone():vel_list(4){}
simpleDrone::simpleDrone(ID_t ID, drone_decon::GPS curPos):
    vel_list(10),cur_pos(curPos),drone_id(ID){}

simpleDrone::simpleDrone(drone_decon::UTMDrone info):vel_list(4){
    
    this->update_values(info);
}
void simpleDrone::update_values(drone_decon::UTMDrone info){
    this->next_wp = info.next_WP;
    this->cur_pos = info.cur_pos;
    this->next_vel = info.next_vel;
    this->cur_vel = info.cur_vel;

    if(this->drone_id == 0){
        for(size_t i = 0; i < vel_list.size();i++){
            vel_list[i]= info.cur_vel;
            vel_acc+=info.cur_vel;
        }
    }
    this->vel_list.push_back(info.cur_vel);
    this->vel_acc = info.cur_vel - this->vel_list.front();
    this->vel_list.pop_front();
    this->cur_vel_est = this->vel_acc/this->vel_list.size();

    while(info.cur_heading > 360) info.cur_heading -= 360;
    while(info.cur_heading<0 ) info.cur_heading +=360;
    while(info.next_heading > 360) info.next_heading -= 360;
    while(info.next_heading<0 ) info.next_heading +=360;

    this->next_heading = info.next_heading;
    this->cur_heading = info.cur_heading;
    this->time = info.time;
    this->gps_time = info.gps_time;
    this->battery_soc = info.battery_soc;
    this->drone_priority = info.drone_priority;

    this->ETA_next_WP= info.ETA_next_WP;
    this->drone_id = info.drone_id;
}
drone_decon::GPS simpleDrone::getPosition(){return this->cur_pos;}
UTM simpleDrone::getPositionU(){return GPS2UTM(this->cur_pos);}
UTM simpleDrone::getNextPositionU(){return GPS2UTM(this->next_wp);}
direction simpleDrone::getHeading(double heading){
    double angle;  
    if(360>= heading && heading >= 270){
        angle = 450-heading;
    }else if (270>heading && heading > 90){
        angle -(heading-90);
    }else if(heading){
        angle = 90-heading;
    }
    angle = M_PI * angle/180;
    direction ret;
    ret.north = std::sin(angle);
    ret.east = std::cos(angle);

    return ret;
}
float simpleDrone::getRawHeading(){return this->cur_heading;}
direction simpleDrone::getCurHeading(){return getHeading(this->cur_heading);}
direction simpleDrone::getNextHeading(){return getHeading(this->next_heading);}
double simpleDrone::getCurVelocity(){return this->cur_vel;}
double simpleDrone::getEstimatedVelocity(){return this->cur_vel_est;}
double simpleDrone::getNextVelocity(){return this->next_vel;}
ID_t simpleDrone::getID(){return this->drone_id;}
long simpleDrone::getTime(){
    if(this->gps_time < 10)
        return this->time;
    return this->gps_time;
}
double simpleDrone::getEtaNextWP(){return this->ETA_next_WP;}
double simpleDrone::getBatterySOC(){return this->battery_soc;}
uint8_t simpleDrone::getPriority(){return this->drone_priority;}
vector<UTM> simpleDrone::getPath(double time,double distance_step){
    UTM curPos = this->getPositionU();
    UTM nextPos = this->getNextPositionU();
    //long int twp = this->gps_time-this->ETA_next_WP;
    time+= std::time(nullptr)-this->getTime();
    double timeStep = distance_step/this->cur_vel_est;
    direction step = this->getCurHeading()*distance_step;
    vector<UTM> path;
    double tNow = 0;
    while(UTMdistance(curPos,nextPos)>distance_step){
        path.push_back(curPos);
        curPos+=step;
        tNow+=timeStep;
        if(tNow>time) break;
    }
    if(tNow < time){
        step = this->getNextHeading()*distance_step;
        while(tNow<time){
            path.push_back(curPos);
            curPos+=step;
            tNow+=timeStep;
        }
    }
    return path;    
    
}



//################### simpleDroneDeconflict ############################
simpleDroneDeconflict::simpleDroneDeconflict(simpleDrone &ourDrone, simpleDrone &otherDrone, std::vector<UTM> &ourDronePath):
    otherDrone(otherDrone),ourDrone(ourDrone),ourDronePath(ourDronePath){
    this->ourSearchTime = maxSearchTime+ time(nullptr)-ourDrone.getTime();
    this->otherSearchTime = maxSearchTime+ time(nullptr)-otherDrone.getTime();
}
bool simpleDroneDeconflict::isSameHeight(){
    UTM otherPos = this->otherDrone.getPositionU();
    UTM otherPosNext = this->otherDrone.getNextPositionU();
    UTM ourPos = this->ourDrone.getPositionU();
    UTM ourPosNext = this->ourDrone.getNextPositionU();

    //TODO in between start.z and end.z
    return std::abs(otherPos.altitude-ourPos.altitude)<minAltDistance||
        std::abs(otherPosNext.altitude-ourPos.altitude) < minAltDistance||
        std::abs(otherPos.altitude-ourPosNext.altitude) < minAltDistance||
        std::abs(otherPosNext.altitude-ourPosNext.altitude) < minAltDistance;
}
bool simpleDroneDeconflict::isWithinSeachArea(){
    
    double maxSearchRadius = saftyMargin*(
                                this->otherSearchTime*this->otherDrone.getEstimatedVelocity()
                                + this->ourSearchTime*this->ourDrone.getEstimatedVelocity()
                                );
    return GPSdistanceMeters(this->otherDrone.getPosition(),this->ourDrone.getPosition())<maxSearchRadius;
}
point simpleDroneDeconflict::pointOfCollision(direction heading1, UTM pos1, direction heading2, UTM pos2){
    double a1 = heading1.north/heading1.east;
    double a2 = heading2.north/heading2.east;
    double b1 = pos1.north-a1*pos1.east;
    double b2 = pos2.north-a2*pos2.east;

    point result;
    result.x = (b1-b2)/(a1-a2);
    result.y = a1*result.x+b1;

    return result;
}
double simpleDroneDeconflict::time2point(point goal, direction heading, double velocity, UTM start){
    direction &V = heading;
    V.east*=velocity;
    V.north*=velocity;

    double t1= (goal.x-start.east)/(V.east);
    double t2= (goal.y-start.north)/(V.north);
    if(std::abs(t1-t2)>2){
        //TODO throw error
        std::cout << "ERROR point not on line"<< std::endl;
    }
    return (t1+t2)/2;
}
line simpleDroneDeconflict::getLine(direction heading, UTM pos){
    line result;
    result.a = heading.north/heading.east;
    result.c = pos.north-result.a*pos.east;
    result.b = -1;

    return result;
}
double simpleDroneDeconflict::line2pointDistance(line theLine,UTM pos){
    double top = std::abs(  theLine.a*pos.east+
                            theLine.b*pos.north+
                            theLine.c);
    double btn = std::sqrt( std::pow(theLine.a,2)+
                            std::pow(theLine.b,2));
    return top/btn;
}
point simpleDroneDeconflict::line2pointPoint(line theLine,UTM pos){
    point result;
    double top = theLine.b*(theLine.b*pos.east-theLine.a*pos.north)-theLine.a*theLine.c;
    double btn = std::pow(theLine.a,2)+std::pow(theLine.b,2);

    result.x = top/btn;
    top = top = theLine.a*(-theLine.b*pos.east+theLine.a*pos.north)-theLine.b*theLine.c;
    result.y = top/btn;

    return result;
}
bool simpleDroneDeconflict::crashDetected(){
    bool crashIsDetected = true;
    line firstPart = getLine(otherDrone.getCurHeading(),otherDrone.getPositionU());
    double ourTime = ourDrone.getTime();
    double ourTimeStep = UTMdistance(ourDronePath[0],ourDronePath[1])/ourDrone.getEstimatedVelocity();
    bool nextWpReached = false;
    for(size_t i = 0; i < ourDronePath.size(); i++){
        double dist = line2pointDistance(firstPart,ourDronePath[i]);
        if(dist < this->minRadius*this->saftyMargin){
            point collision = line2pointPoint(firstPart,ourDronePath[i]);
            double tCol = time2point(   collision,
                                        otherDrone.getCurHeading(),
                                        otherDrone.getEstimatedVelocity(),
                                        otherDrone.getPositionU());
            if(tCol+otherDrone.getTime()>otherDrone.getEtaNextWP()){
                break;
            } 
            else if (std::abs(tCol+otherDrone.getTime()-ourTimeStep)<this->minTimeBetween*this->saftyMargin){
                double difHeight = otherDrone.getNextPositionU().altitude-otherDrone.getPositionU().altitude;
                double altitude =   difHeight*
                                    (tCol/(otherDrone.getEtaNextWP()-otherDrone.getTime()))+
                                    otherDrone.getPositionU().altitude;
                if(std::abs(altitude-ourDronePath[i].altitude)<this->minAltDistance*this->saftyMargin){
                    crashIsDetected = true;
                    ourCrashSites.push_back(ourDronePath[i]);
                    UTM crashOther;
                    crashOther.altitude = altitude;
                    crashOther.east = collision.x;
                    crashOther.north = collision.y;
                    crashOther.zone = otherDrone.getPositionU().zone;
                    otherCrashSites.push_back(crashOther);
                }                    
                
                
                
            }
                    
        }
        ourTime += ourTimeStep;    
    }

    line secondPart = getLine(otherDrone.getNextHeading(),otherDrone.getNextPositionU());
    ourTime = ourDrone.getTime();
    for(size_t i = 0; i < ourDronePath.size(); i++){
        double dist = line2pointDistance(secondPart,ourDronePath[i]);
        if(dist < this->minRadius*this->saftyMargin){
            point collision = line2pointPoint(secondPart,ourDronePath[i]);
            double tCol = time2point(   collision,
                                        otherDrone.getNextHeading(),
                                        otherDrone.getEstimatedVelocity(),
                                        otherDrone.getNextPositionU());
            if(tCol+otherDrone.getTime()>otherSearchTime+std::time(nullptr)){
                break;
            } 
            else if (std::abs(tCol+otherDrone.getTime()-ourTimeStep)<this->minTimeBetween){
                double altitude = otherDrone.getNextPositionU().altitude;
                if(std::abs(altitude-ourDronePath[i].altitude)<this->minAltDistance){
                    crashIsDetected = true;
                    ourCrashSites.push_back(ourDronePath[i]);
                    UTM crashOther;
                    crashOther.altitude = altitude;
                    crashOther.east = collision.x;
                    crashOther.north = collision.y;
                    crashOther.zone = otherDrone.getNextPositionU().zone;
                    otherCrashSites.push_back(crashOther);
                }                    
            }        
        }
        ourTime += ourTimeStep;    
    }

}
bool simpleDroneDeconflict::takeOffCrashDetect(){

}
std::vector<UTM> simpleDroneDeconflict::getOurCrashSites(){

}
std::vector<UTM> simpleDroneDeconflict::getOtherCrashSites(){
    
}
