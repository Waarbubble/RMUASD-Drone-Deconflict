;; Auto-generated. Do not edit!


(when (boundp 'drone_decon::RegisterDrone)
  (if (not (find-package "DRONE_DECON"))
    (make-package "DRONE_DECON"))
  (shadow 'RegisterDrone (find-package "DRONE_DECON")))
(unless (find-package "DRONE_DECON::REGISTERDRONE")
  (make-package "DRONE_DECON::REGISTERDRONE"))

(in-package "ROS")
;;//! \htmlinclude RegisterDrone.msg.html


(defclass drone_decon::RegisterDrone
  :super ros::object
  :slots (_drone_id ))

(defmethod drone_decon::RegisterDrone
  (:init
   (&key
    ((:drone_id __drone_id) 0)
    )
   (send-super :init)
   (setq _drone_id (round __drone_id))
   self)
  (:drone_id
   (&optional __drone_id)
   (if __drone_id (setq _drone_id __drone_id)) _drone_id)
  (:serialization-length
   ()
   (+
    ;; uint32 _drone_id
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _drone_id
       (write-long _drone_id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _drone_id
     (setq _drone_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get drone_decon::RegisterDrone :md5sum-) "1d2b88006655e09d50ef5be4d2a6c794")
(setf (get drone_decon::RegisterDrone :datatype-) "drone_decon/RegisterDrone")
(setf (get drone_decon::RegisterDrone :definition-)
      "uint32 drone_id
")



(provide :drone_decon/RegisterDrone "1d2b88006655e09d50ef5be4d2a6c794")


