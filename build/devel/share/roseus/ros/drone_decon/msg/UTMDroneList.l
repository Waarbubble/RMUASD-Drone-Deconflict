;; Auto-generated. Do not edit!


(when (boundp 'drone_decon::UTMDroneList)
  (if (not (find-package "DRONE_DECON"))
    (make-package "DRONE_DECON"))
  (shadow 'UTMDroneList (find-package "DRONE_DECON")))
(unless (find-package "DRONE_DECON::UTMDRONELIST")
  (make-package "DRONE_DECON::UTMDRONELIST"))

(in-package "ROS")
;;//! \htmlinclude UTMDroneList.msg.html


(defclass drone_decon::UTMDroneList
  :super ros::object
  :slots (_drone_list ))

(defmethod drone_decon::UTMDroneList
  (:init
   (&key
    ((:drone_list __drone_list) (let (r) (dotimes (i 0) (push (instance drone_decon::UTMDrone :init) r)) r))
    )
   (send-super :init)
   (setq _drone_list __drone_list)
   self)
  (:drone_list
   (&rest __drone_list)
   (if (keywordp (car __drone_list))
       (send* _drone_list __drone_list)
     (progn
       (if __drone_list (setq _drone_list (car __drone_list)))
       _drone_list)))
  (:serialization-length
   ()
   (+
    ;; drone_decon/UTMDrone[] _drone_list
    (apply #'+ (send-all _drone_list :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; drone_decon/UTMDrone[] _drone_list
     (write-long (length _drone_list) s)
     (dolist (elem _drone_list)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; drone_decon/UTMDrone[] _drone_list
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _drone_list (let (r) (dotimes (i n) (push (instance drone_decon::UTMDrone :init) r)) r))
     (dolist (elem- _drone_list)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get drone_decon::UTMDroneList :md5sum-) "c07f9db1359ae55284964655b2dfadf8")
(setf (get drone_decon::UTMDroneList :datatype-) "drone_decon/UTMDroneList")
(setf (get drone_decon::UTMDroneList :definition-)
      "UTMDrone[] drone_list
================================================================================
MSG: drone_decon/UTMDrone
GPS next_WP #
GPS cur_pos #

float64 next_vel #
float64 cur_vel #

float64 next_heading #
float64 cur_heading #

int64 time
int64 gps_time #

float64 battery_soc

int16 drone_priority #

int64 ETA_next_WP #

uint32 drone_id #

================================================================================
MSG: drone_decon/GPS
float64 latitude
float64 longitude
float64 altitude


")



(provide :drone_decon/UTMDroneList "c07f9db1359ae55284964655b2dfadf8")


