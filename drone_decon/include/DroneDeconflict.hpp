#ifndef DRONE_DECONFLICT_H_
#define DRONE_DECONFLICT_H_

#include <deque>
#include <vector>
#include <string>

#include <drone_decon/GPS.h>
#include <drone_decon/UTMDrone.h>

#include <UTM.hpp>
#define ID_t unsigned int
#define PATH_t std::vector<drone_decon::GPS>
#define uint8 unsigned char

using namespace std;


struct direction{
  double north;
  double east;
};

struct UTM{
  double north;
  double east;
  double altitude;
  std::string zone;
  UTM& operator+=(const direction &b);
};

struct point{
  double x;
  double y;
};

struct line{
  double a;
  double b;
  double c;
};

ostream& operator<<(ostream& os, const UTM& pos);
ostream& operator<<(ostream& os, const point& pos);
ostream& operator<<(ostream& os, const direction& pos);



drone_decon::GPS UTM2GPS(UTM coord);
UTM GPS2UTM(drone_decon::GPS coord);
double deg2rad(double deg);
double rad2deg(double rad);
double GPSdistanceMeters(drone_decon::GPS pos1, drone_decon::GPS pos2);
double UTMdistance(UTM pos1, UTM pos2);


#define LIST_SIZE 4
class simpleDrone{
public:
  simpleDrone();
  simpleDrone(drone_decon::UTMDrone info);

  void update_values(drone_decon::UTMDrone info);
  drone_decon::GPS getPosition();
  UTM getPositionU();
  UTM getNextPositionU();
  float getRawHeading();
  direction getCurHeading();
  direction getNextHeading();
  double getCurVelocity();
  double getNextVelocity();
  double getEstimatedVelocity();
  ID_t getID();
  long getTime();
  double getEtaNextWP();
  uint8_t getPriority();
  double getBatterySOC();
  vector<UTM> getPath(double time,double distance_step=5);


private:

  direction getHeading(double heading);
  drone_decon::GPS next_wp;

  //Curent Pos
  drone_decon::GPS cur_pos;
  deque<drone_decon::GPS> cur_pos_list;

  float next_vel;
  float next_heading;

  // Current velocity estimation
  float cur_vel;
  float cur_vel_est;
  deque<float> vel_list; 
  float vel_acc;


  long ETA_next_WP;
  
  float cur_heading;
  
  int battery_soc;
  int drone_priority;

  long time;
  deque<long> time_list;

  // drone time 
  long gps_time;
  deque<long> gps_time_list;
  

  ID_t drone_id;

};

class simpleDroneDeconflict{
public:
  simpleDroneDeconflict(simpleDrone &ourDrone, simpleDrone &otherDrone, std::vector<UTM> &ourDronePath);
  bool isSameHeight();
  bool isWithinSeachArea();
  bool crashDetected();
  bool takeOffCrashDetect();
  std::vector<UTM> getOurCrashSites();
  bool isOurCrashSitesBeforeWaypoint(size_t index);
  std::vector<UTM> getOtherCrashSites();
  

  


  //All distance in meters, time in seconds
  static constexpr double minRadius = 10;
  static constexpr double minAltDistance = 5;
  static constexpr double maxSearchTime = 120;
  static constexpr double minTimeBetween = 20;
  static constexpr double saftyMargin = 1.5; //Padding the other Values when nessesary
  
private:
  point pointOfCollision(direction heading1, UTM pos1, direction heading2, UTM pos2);
  line getLine(direction heading, UTM pos);
  double time2point(point goal, direction heading, double velocity, UTM start);
  double line2pointDistance(line,UTM pos);
  point line2pointPoint(line theLine, UTM pos);
  simpleDrone &ourDrone;
  simpleDrone &otherDrone;
  std::vector<UTM> &ourDronePath;
  long ourSearchTime;
  long otherSearchTime;

  std::vector<UTM> ourCrashSites;
  std::vector<bool> isOurCrashSitesBeforeWaypointList;

  std::vector<UTM> otherCrashSites;


};

#endif
