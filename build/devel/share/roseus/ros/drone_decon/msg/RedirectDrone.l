;; Auto-generated. Do not edit!


(when (boundp 'drone_decon::RedirectDrone)
  (if (not (find-package "DRONE_DECON"))
    (make-package "DRONE_DECON"))
  (shadow 'RedirectDrone (find-package "DRONE_DECON")))
(unless (find-package "DRONE_DECON::REDIRECTDRONE")
  (make-package "DRONE_DECON::REDIRECTDRONE"))

(in-package "ROS")
;;//! \htmlinclude RedirectDrone.msg.html


(defclass drone_decon::RedirectDrone
  :super ros::object
  :slots (_drone_id _position _insertBeforeNextWayPoint _standByAndReplanRouteAtPoint ))

(defmethod drone_decon::RedirectDrone
  (:init
   (&key
    ((:drone_id __drone_id) 0)
    ((:position __position) (instance drone_decon::GPS :init))
    ((:insertBeforeNextWayPoint __insertBeforeNextWayPoint) nil)
    ((:standByAndReplanRouteAtPoint __standByAndReplanRouteAtPoint) nil)
    )
   (send-super :init)
   (setq _drone_id (round __drone_id))
   (setq _position __position)
   (setq _insertBeforeNextWayPoint __insertBeforeNextWayPoint)
   (setq _standByAndReplanRouteAtPoint __standByAndReplanRouteAtPoint)
   self)
  (:drone_id
   (&optional __drone_id)
   (if __drone_id (setq _drone_id __drone_id)) _drone_id)
  (:position
   (&rest __position)
   (if (keywordp (car __position))
       (send* _position __position)
     (progn
       (if __position (setq _position (car __position)))
       _position)))
  (:insertBeforeNextWayPoint
   (&optional __insertBeforeNextWayPoint)
   (if __insertBeforeNextWayPoint (setq _insertBeforeNextWayPoint __insertBeforeNextWayPoint)) _insertBeforeNextWayPoint)
  (:standByAndReplanRouteAtPoint
   (&optional __standByAndReplanRouteAtPoint)
   (if __standByAndReplanRouteAtPoint (setq _standByAndReplanRouteAtPoint __standByAndReplanRouteAtPoint)) _standByAndReplanRouteAtPoint)
  (:serialization-length
   ()
   (+
    ;; uint32 _drone_id
    4
    ;; drone_decon/GPS _position
    (send _position :serialization-length)
    ;; bool _insertBeforeNextWayPoint
    1
    ;; bool _standByAndReplanRouteAtPoint
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _drone_id
       (write-long _drone_id s)
     ;; drone_decon/GPS _position
       (send _position :serialize s)
     ;; bool _insertBeforeNextWayPoint
       (if _insertBeforeNextWayPoint (write-byte -1 s) (write-byte 0 s))
     ;; bool _standByAndReplanRouteAtPoint
       (if _standByAndReplanRouteAtPoint (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _drone_id
     (setq _drone_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; drone_decon/GPS _position
     (send _position :deserialize buf ptr-) (incf ptr- (send _position :serialization-length))
   ;; bool _insertBeforeNextWayPoint
     (setq _insertBeforeNextWayPoint (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _standByAndReplanRouteAtPoint
     (setq _standByAndReplanRouteAtPoint (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get drone_decon::RedirectDrone :md5sum-) "07e5cac6757732dd9a419b2544615592")
(setf (get drone_decon::RedirectDrone :datatype-) "drone_decon/RedirectDrone")
(setf (get drone_decon::RedirectDrone :definition-)
      "uint32 drone_id

GPS position

bool insertBeforeNextWayPoint
bool standByAndReplanRouteAtPoint
================================================================================
MSG: drone_decon/GPS
float64 latitude
float64 longitude
float64 altitude


")



(provide :drone_decon/RedirectDrone "07e5cac6757732dd9a419b2544615592")


