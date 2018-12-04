;; Auto-generated. Do not edit!


(when (boundp 'drone_decon::UTMDrone)
  (if (not (find-package "DRONE_DECON"))
    (make-package "DRONE_DECON"))
  (shadow 'UTMDrone (find-package "DRONE_DECON")))
(unless (find-package "DRONE_DECON::UTMDRONE")
  (make-package "DRONE_DECON::UTMDRONE"))

(in-package "ROS")
;;//! \htmlinclude UTMDrone.msg.html


(defclass drone_decon::UTMDrone
  :super ros::object
  :slots (_next_WP _cur_pos _next_vel _cur_vel _next_heading _cur_heading _time _gps_time _battery_soc _drone_priority _ETA_next_WP _drone_id ))

(defmethod drone_decon::UTMDrone
  (:init
   (&key
    ((:next_WP __next_WP) (instance drone_decon::GPS :init))
    ((:cur_pos __cur_pos) (instance drone_decon::GPS :init))
    ((:next_vel __next_vel) 0.0)
    ((:cur_vel __cur_vel) 0.0)
    ((:next_heading __next_heading) 0.0)
    ((:cur_heading __cur_heading) 0.0)
    ((:time __time) 0)
    ((:gps_time __gps_time) 0)
    ((:battery_soc __battery_soc) 0.0)
    ((:drone_priority __drone_priority) 0)
    ((:ETA_next_WP __ETA_next_WP) 0)
    ((:drone_id __drone_id) 0)
    )
   (send-super :init)
   (setq _next_WP __next_WP)
   (setq _cur_pos __cur_pos)
   (setq _next_vel (float __next_vel))
   (setq _cur_vel (float __cur_vel))
   (setq _next_heading (float __next_heading))
   (setq _cur_heading (float __cur_heading))
   (setq _time (round __time))
   (setq _gps_time (round __gps_time))
   (setq _battery_soc (float __battery_soc))
   (setq _drone_priority (round __drone_priority))
   (setq _ETA_next_WP (round __ETA_next_WP))
   (setq _drone_id (round __drone_id))
   self)
  (:next_WP
   (&rest __next_WP)
   (if (keywordp (car __next_WP))
       (send* _next_WP __next_WP)
     (progn
       (if __next_WP (setq _next_WP (car __next_WP)))
       _next_WP)))
  (:cur_pos
   (&rest __cur_pos)
   (if (keywordp (car __cur_pos))
       (send* _cur_pos __cur_pos)
     (progn
       (if __cur_pos (setq _cur_pos (car __cur_pos)))
       _cur_pos)))
  (:next_vel
   (&optional __next_vel)
   (if __next_vel (setq _next_vel __next_vel)) _next_vel)
  (:cur_vel
   (&optional __cur_vel)
   (if __cur_vel (setq _cur_vel __cur_vel)) _cur_vel)
  (:next_heading
   (&optional __next_heading)
   (if __next_heading (setq _next_heading __next_heading)) _next_heading)
  (:cur_heading
   (&optional __cur_heading)
   (if __cur_heading (setq _cur_heading __cur_heading)) _cur_heading)
  (:time
   (&optional __time)
   (if __time (setq _time __time)) _time)
  (:gps_time
   (&optional __gps_time)
   (if __gps_time (setq _gps_time __gps_time)) _gps_time)
  (:battery_soc
   (&optional __battery_soc)
   (if __battery_soc (setq _battery_soc __battery_soc)) _battery_soc)
  (:drone_priority
   (&optional __drone_priority)
   (if __drone_priority (setq _drone_priority __drone_priority)) _drone_priority)
  (:ETA_next_WP
   (&optional __ETA_next_WP)
   (if __ETA_next_WP (setq _ETA_next_WP __ETA_next_WP)) _ETA_next_WP)
  (:drone_id
   (&optional __drone_id)
   (if __drone_id (setq _drone_id __drone_id)) _drone_id)
  (:serialization-length
   ()
   (+
    ;; drone_decon/GPS _next_WP
    (send _next_WP :serialization-length)
    ;; drone_decon/GPS _cur_pos
    (send _cur_pos :serialization-length)
    ;; float64 _next_vel
    8
    ;; float64 _cur_vel
    8
    ;; float64 _next_heading
    8
    ;; float64 _cur_heading
    8
    ;; int64 _time
    8
    ;; int64 _gps_time
    8
    ;; float64 _battery_soc
    8
    ;; int16 _drone_priority
    2
    ;; int64 _ETA_next_WP
    8
    ;; uint32 _drone_id
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; drone_decon/GPS _next_WP
       (send _next_WP :serialize s)
     ;; drone_decon/GPS _cur_pos
       (send _cur_pos :serialize s)
     ;; float64 _next_vel
       (sys::poke _next_vel (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _cur_vel
       (sys::poke _cur_vel (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _next_heading
       (sys::poke _next_heading (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _cur_heading
       (sys::poke _cur_heading (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; int64 _time
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _time (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _time) (= (length (_time . bv)) 2)) ;; bignum
              (write-long (ash (elt (_time . bv) 0) 0) s)
              (write-long (ash (elt (_time . bv) 1) -1) s))
             ((and (class _time) (= (length (_time . bv)) 1)) ;; big1
              (write-long (elt (_time . bv) 0) s)
              (write-long (if (>= _time 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _time s)(write-long (if (>= _time 0) 0 #xffffffff) s)))
     ;; int64 _gps_time
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _gps_time (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _gps_time) (= (length (_gps_time . bv)) 2)) ;; bignum
              (write-long (ash (elt (_gps_time . bv) 0) 0) s)
              (write-long (ash (elt (_gps_time . bv) 1) -1) s))
             ((and (class _gps_time) (= (length (_gps_time . bv)) 1)) ;; big1
              (write-long (elt (_gps_time . bv) 0) s)
              (write-long (if (>= _gps_time 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _gps_time s)(write-long (if (>= _gps_time 0) 0 #xffffffff) s)))
     ;; float64 _battery_soc
       (sys::poke _battery_soc (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; int16 _drone_priority
       (write-word _drone_priority s)
     ;; int64 _ETA_next_WP
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _ETA_next_WP (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _ETA_next_WP) (= (length (_ETA_next_WP . bv)) 2)) ;; bignum
              (write-long (ash (elt (_ETA_next_WP . bv) 0) 0) s)
              (write-long (ash (elt (_ETA_next_WP . bv) 1) -1) s))
             ((and (class _ETA_next_WP) (= (length (_ETA_next_WP . bv)) 1)) ;; big1
              (write-long (elt (_ETA_next_WP . bv) 0) s)
              (write-long (if (>= _ETA_next_WP 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _ETA_next_WP s)(write-long (if (>= _ETA_next_WP 0) 0 #xffffffff) s)))
     ;; uint32 _drone_id
       (write-long _drone_id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; drone_decon/GPS _next_WP
     (send _next_WP :deserialize buf ptr-) (incf ptr- (send _next_WP :serialization-length))
   ;; drone_decon/GPS _cur_pos
     (send _cur_pos :deserialize buf ptr-) (incf ptr- (send _cur_pos :serialization-length))
   ;; float64 _next_vel
     (setq _next_vel (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _cur_vel
     (setq _cur_vel (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _next_heading
     (setq _next_heading (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _cur_heading
     (setq _cur_heading (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; int64 _time
#+(or :alpha :irix6 :x86_64)
      (setf _time (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _time (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _gps_time
#+(or :alpha :irix6 :x86_64)
      (setf _gps_time (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _gps_time (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; float64 _battery_soc
     (setq _battery_soc (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; int16 _drone_priority
     (setq _drone_priority (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int64 _ETA_next_WP
#+(or :alpha :irix6 :x86_64)
      (setf _ETA_next_WP (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _ETA_next_WP (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; uint32 _drone_id
     (setq _drone_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get drone_decon::UTMDrone :md5sum-) "a50c965492d94784376dc0227b21a5a4")
(setf (get drone_decon::UTMDrone :datatype-) "drone_decon/UTMDrone")
(setf (get drone_decon::UTMDrone :definition-)
      "GPS next_WP #
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



(provide :drone_decon/UTMDrone "a50c965492d94784376dc0227b21a5a4")


