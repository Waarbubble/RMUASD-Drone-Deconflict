// INCLUDE STD
#include <iostream>
#include <deque>
#include <vector>
#include <string>
#include <fstream>
#include <map>
#include <math.h>
#include <locale>

// INCLUDE ROS
#include <ros/ros.h>
#include <ros/package.h>

// INCLUDE MESSAGES AND SERVICES
#include <drone_decon/GPS.h>
#include <drone_decon/UTMDrone.h>
#include <drone_decon/UTMDroneList.h>

// INCLUDE OWN FILES
#include <DroneDeconflict.hpp>

using namespace std;
using namespace drone_decon;

#define DEBUG true
#define DO_PREFLIGHT_CHECK false


// ############################ Clients, Subscribers and Publishers #######################
ros::Publisher Heartbeat_pub;

ros::Subscriber UTMDrone_sub;



// ############################# Global Variables ######################################
ros::NodeHandle* nh;

//node_monitor::heartbeat heartbeat_msg;

std::map<ID_t,simpleDrone> OtherDrones;
std::map<ID_t,ID_t> Own2UtmId;



// ################################ Misulanius ###########################################
ostream& operator<<(ostream& os, const GPS& pos)  
{  
    os << "Lon(" << pos.longitude << "), Lat(" << pos.latitude << "), Alt(" << pos.altitude << ")";  
    return os;  
} 

// ############################ Helper functions ##################################
/*void NodeState(uint8 severity,string msg,double rate = 0){
    double curRate = heartbeat_msg.rate;
    if(rate != 0){
        heartbeat_msg.rate = rate;
    }
    heartbeat_msg.severity = severity;
    heartbeat_msg.text = msg;
    heartbeat_msg.header.stamp = ros::Time::now();
    Heartbeat_pub.publish(heartbeat_msg);
    heartbeat_msg.rate = curRate;
}*/

// ############################ Service calls ##################################


// ############################### Message Handers ###################################
void UTMdrone_Handler(UTMDroneList msg){
    for(size_t i = 0; i < msg.drone_list.size(); i++){
        UTMDrone* drone = &msg.drone_list[i];
        OtherDrones[drone->drone_id].update_values(*drone);
        if(DEBUG) cout << "UTM Drone Update: " << OtherDrones[drone->drone_id].getID() << endl;
    }  
}


// ################################### Main Program ###########################################
void initialize(void){
    
    //Heartbeat_pub = nh->advertise<node_monitor::heartbeat>("/node_monitor/input/Heartbeat",100);
    
    //UTMDrone_sub = nh->subscribe("/utm/dronesList",100,UTMdrone_Handler);
}


int main(int argc, char** argv){
    ros::init(argc,argv,"drone_decon");
    nh = new ros::NodeHandle();
    //initialize();

    int rate = 10;
    ros::Rate r(rate);
    /*heartbeat_msg.rate = rate;
    heartbeat_msg.severity = node_monitor::heartbeat::nothing;
    heartbeat_msg.header.frame_id ="drone_decon";*/
    while(ros::ok()){
        ros::spinOnce();
        r.sleep();
        // ############### Drone deconfliction ################
        /*for(size_t i = 0; i < activeJobs.size();i++){
            if(activeJobs[i]->getStatus() == job::ongoing){
                ID_t ID = Own2UtmId[activeJobs[i]->getDrone()->getID()];
                simpleDrone ourDrone = OtherDrones[ID];
                vector<UTM> ourDronePath = ourDrone.getPath(simpleDroneDeconflict::maxSearchTime);

                for (auto it = OtherDrones.begin(); it != OtherDrones.end(); it++ )
                { // first = key, second = data
                    if(it->first != ID){ // Make Sure it is not our Drone
                        simpleDroneDeconflict deCon(ourDrone,it->second,ourDronePath);
                        if(deCon.isSameHeight()){
                            if(deCon.isWithinSeachArea()){
                                //TODO assert that both Drones are in same UTM zone
                                

                                
                                
                                if(it->second.getPriority() == ourDrone.getPriority()){
                                    //Deconflict SAME Priority



                                }else if(it->second.getPriority() > ourDrone.getPriority()){
                                    //If Drone Has Lower Priority
                                }else{
                                    //If Drone Has Higher Priority
                                }


                            }
                            //if(it->second.getPriority()==)
                        }
                    }
                }
            }
        }*/
    }

    delete nh;
}
