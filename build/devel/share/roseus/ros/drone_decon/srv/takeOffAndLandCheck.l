;; Auto-generated. Do not edit!


(when (boundp 'drone_decon::takeOffAndLandCheck)
  (if (not (find-package "DRONE_DECON"))
    (make-package "DRONE_DECON"))
  (shadow 'takeOffAndLandCheck (find-package "DRONE_DECON")))
(unless (find-package "DRONE_DECON::TAKEOFFANDLANDCHECK")
  (make-package "DRONE_DECON::TAKEOFFANDLANDCHECK"))
(unless (find-package "DRONE_DECON::TAKEOFFANDLANDCHECKREQUEST")
  (make-package "DRONE_DECON::TAKEOFFANDLANDCHECKREQUEST"))
(unless (find-package "DRONE_DECON::TAKEOFFANDLANDCHECKRESPONSE")
  (make-package "DRONE_DECON::TAKEOFFANDLANDCHECKRESPONSE"))

(in-package "ROS")





(defclass drone_decon::takeOffAndLandCheckRequest
  :super ros::object
  :slots (_drone_id _isAsending ))

(defmethod drone_decon::takeOffAndLandCheckRequest
  (:init
   (&key
    ((:drone_id __drone_id) 0)
    ((:isAsending __isAsending) nil)
    )
   (send-super :init)
   (setq _drone_id (round __drone_id))
   (setq _isAsending __isAsending)
   self)
  (:drone_id
   (&optional __drone_id)
   (if __drone_id (setq _drone_id __drone_id)) _drone_id)
  (:isAsending
   (&optional __isAsending)
   (if __isAsending (setq _isAsending __isAsending)) _isAsending)
  (:serialization-length
   ()
   (+
    ;; uint32 _drone_id
    4
    ;; bool _isAsending
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _drone_id
       (write-long _drone_id s)
     ;; bool _isAsending
       (if _isAsending (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _drone_id
     (setq _drone_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; bool _isAsending
     (setq _isAsending (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass drone_decon::takeOffAndLandCheckResponse
  :super ros::object
  :slots (_takeOffIsSafe _maxAltitude _minAltitude ))

(defmethod drone_decon::takeOffAndLandCheckResponse
  (:init
   (&key
    ((:takeOffIsSafe __takeOffIsSafe) nil)
    ((:maxAltitude __maxAltitude) 0.0)
    ((:minAltitude __minAltitude) 0.0)
    )
   (send-super :init)
   (setq _takeOffIsSafe __takeOffIsSafe)
   (setq _maxAltitude (float __maxAltitude))
   (setq _minAltitude (float __minAltitude))
   self)
  (:takeOffIsSafe
   (&optional __takeOffIsSafe)
   (if __takeOffIsSafe (setq _takeOffIsSafe __takeOffIsSafe)) _takeOffIsSafe)
  (:maxAltitude
   (&optional __maxAltitude)
   (if __maxAltitude (setq _maxAltitude __maxAltitude)) _maxAltitude)
  (:minAltitude
   (&optional __minAltitude)
   (if __minAltitude (setq _minAltitude __minAltitude)) _minAltitude)
  (:serialization-length
   ()
   (+
    ;; bool _takeOffIsSafe
    1
    ;; float32 _maxAltitude
    4
    ;; float32 _minAltitude
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _takeOffIsSafe
       (if _takeOffIsSafe (write-byte -1 s) (write-byte 0 s))
     ;; float32 _maxAltitude
       (sys::poke _maxAltitude (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _minAltitude
       (sys::poke _minAltitude (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _takeOffIsSafe
     (setq _takeOffIsSafe (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float32 _maxAltitude
     (setq _maxAltitude (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _minAltitude
     (setq _minAltitude (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass drone_decon::takeOffAndLandCheck
  :super ros::object
  :slots ())

(setf (get drone_decon::takeOffAndLandCheck :md5sum-) "0304b59d69afd85db4e7a6b27d94aacb")
(setf (get drone_decon::takeOffAndLandCheck :datatype-) "drone_decon/takeOffAndLandCheck")
(setf (get drone_decon::takeOffAndLandCheck :request) drone_decon::takeOffAndLandCheckRequest)
(setf (get drone_decon::takeOffAndLandCheck :response) drone_decon::takeOffAndLandCheckResponse)

(defmethod drone_decon::takeOffAndLandCheckRequest
  (:response () (instance drone_decon::takeOffAndLandCheckResponse :init)))

(setf (get drone_decon::takeOffAndLandCheckRequest :md5sum-) "0304b59d69afd85db4e7a6b27d94aacb")
(setf (get drone_decon::takeOffAndLandCheckRequest :datatype-) "drone_decon/takeOffAndLandCheckRequest")
(setf (get drone_decon::takeOffAndLandCheckRequest :definition-)
      "
uint32 drone_id
bool isAsending

---

bool takeOffIsSafe
float32 maxAltitude
float32 minAltitude

")

(setf (get drone_decon::takeOffAndLandCheckResponse :md5sum-) "0304b59d69afd85db4e7a6b27d94aacb")
(setf (get drone_decon::takeOffAndLandCheckResponse :datatype-) "drone_decon/takeOffAndLandCheckResponse")
(setf (get drone_decon::takeOffAndLandCheckResponse :definition-)
      "
uint32 drone_id
bool isAsending

---

bool takeOffIsSafe
float32 maxAltitude
float32 minAltitude

")



(provide :drone_decon/takeOffAndLandCheck "0304b59d69afd85db4e7a6b27d94aacb")


