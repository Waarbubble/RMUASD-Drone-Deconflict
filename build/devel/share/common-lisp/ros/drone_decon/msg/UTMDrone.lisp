; Auto-generated. Do not edit!


(cl:in-package drone_decon-msg)


;//! \htmlinclude UTMDrone.msg.html

(cl:defclass <UTMDrone> (roslisp-msg-protocol:ros-message)
  ((next_WP
    :reader next_WP
    :initarg :next_WP
    :type drone_decon-msg:GPS
    :initform (cl:make-instance 'drone_decon-msg:GPS))
   (cur_pos
    :reader cur_pos
    :initarg :cur_pos
    :type drone_decon-msg:GPS
    :initform (cl:make-instance 'drone_decon-msg:GPS))
   (next_vel
    :reader next_vel
    :initarg :next_vel
    :type cl:float
    :initform 0.0)
   (cur_vel
    :reader cur_vel
    :initarg :cur_vel
    :type cl:float
    :initform 0.0)
   (next_heading
    :reader next_heading
    :initarg :next_heading
    :type cl:float
    :initform 0.0)
   (cur_heading
    :reader cur_heading
    :initarg :cur_heading
    :type cl:float
    :initform 0.0)
   (time
    :reader time
    :initarg :time
    :type cl:integer
    :initform 0)
   (gps_time
    :reader gps_time
    :initarg :gps_time
    :type cl:integer
    :initform 0)
   (battery_soc
    :reader battery_soc
    :initarg :battery_soc
    :type cl:float
    :initform 0.0)
   (drone_priority
    :reader drone_priority
    :initarg :drone_priority
    :type cl:fixnum
    :initform 0)
   (ETA_next_WP
    :reader ETA_next_WP
    :initarg :ETA_next_WP
    :type cl:integer
    :initform 0)
   (drone_id
    :reader drone_id
    :initarg :drone_id
    :type cl:integer
    :initform 0))
)

(cl:defclass UTMDrone (<UTMDrone>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <UTMDrone>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'UTMDrone)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name drone_decon-msg:<UTMDrone> is deprecated: use drone_decon-msg:UTMDrone instead.")))

(cl:ensure-generic-function 'next_WP-val :lambda-list '(m))
(cl:defmethod next_WP-val ((m <UTMDrone>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader drone_decon-msg:next_WP-val is deprecated.  Use drone_decon-msg:next_WP instead.")
  (next_WP m))

(cl:ensure-generic-function 'cur_pos-val :lambda-list '(m))
(cl:defmethod cur_pos-val ((m <UTMDrone>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader drone_decon-msg:cur_pos-val is deprecated.  Use drone_decon-msg:cur_pos instead.")
  (cur_pos m))

(cl:ensure-generic-function 'next_vel-val :lambda-list '(m))
(cl:defmethod next_vel-val ((m <UTMDrone>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader drone_decon-msg:next_vel-val is deprecated.  Use drone_decon-msg:next_vel instead.")
  (next_vel m))

(cl:ensure-generic-function 'cur_vel-val :lambda-list '(m))
(cl:defmethod cur_vel-val ((m <UTMDrone>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader drone_decon-msg:cur_vel-val is deprecated.  Use drone_decon-msg:cur_vel instead.")
  (cur_vel m))

(cl:ensure-generic-function 'next_heading-val :lambda-list '(m))
(cl:defmethod next_heading-val ((m <UTMDrone>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader drone_decon-msg:next_heading-val is deprecated.  Use drone_decon-msg:next_heading instead.")
  (next_heading m))

(cl:ensure-generic-function 'cur_heading-val :lambda-list '(m))
(cl:defmethod cur_heading-val ((m <UTMDrone>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader drone_decon-msg:cur_heading-val is deprecated.  Use drone_decon-msg:cur_heading instead.")
  (cur_heading m))

(cl:ensure-generic-function 'time-val :lambda-list '(m))
(cl:defmethod time-val ((m <UTMDrone>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader drone_decon-msg:time-val is deprecated.  Use drone_decon-msg:time instead.")
  (time m))

(cl:ensure-generic-function 'gps_time-val :lambda-list '(m))
(cl:defmethod gps_time-val ((m <UTMDrone>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader drone_decon-msg:gps_time-val is deprecated.  Use drone_decon-msg:gps_time instead.")
  (gps_time m))

(cl:ensure-generic-function 'battery_soc-val :lambda-list '(m))
(cl:defmethod battery_soc-val ((m <UTMDrone>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader drone_decon-msg:battery_soc-val is deprecated.  Use drone_decon-msg:battery_soc instead.")
  (battery_soc m))

(cl:ensure-generic-function 'drone_priority-val :lambda-list '(m))
(cl:defmethod drone_priority-val ((m <UTMDrone>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader drone_decon-msg:drone_priority-val is deprecated.  Use drone_decon-msg:drone_priority instead.")
  (drone_priority m))

(cl:ensure-generic-function 'ETA_next_WP-val :lambda-list '(m))
(cl:defmethod ETA_next_WP-val ((m <UTMDrone>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader drone_decon-msg:ETA_next_WP-val is deprecated.  Use drone_decon-msg:ETA_next_WP instead.")
  (ETA_next_WP m))

(cl:ensure-generic-function 'drone_id-val :lambda-list '(m))
(cl:defmethod drone_id-val ((m <UTMDrone>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader drone_decon-msg:drone_id-val is deprecated.  Use drone_decon-msg:drone_id instead.")
  (drone_id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <UTMDrone>) ostream)
  "Serializes a message object of type '<UTMDrone>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'next_WP) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'cur_pos) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'next_vel))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'cur_vel))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'next_heading))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'cur_heading))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'time)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'gps_time)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'battery_soc))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'drone_priority)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'ETA_next_WP)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'drone_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'drone_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'drone_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'drone_id)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <UTMDrone>) istream)
  "Deserializes a message object of type '<UTMDrone>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'next_WP) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'cur_pos) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'next_vel) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'cur_vel) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'next_heading) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'cur_heading) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'time) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'gps_time) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'battery_soc) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'drone_priority) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ETA_next_WP) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'drone_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'drone_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'drone_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'drone_id)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<UTMDrone>)))
  "Returns string type for a message object of type '<UTMDrone>"
  "drone_decon/UTMDrone")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UTMDrone)))
  "Returns string type for a message object of type 'UTMDrone"
  "drone_decon/UTMDrone")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<UTMDrone>)))
  "Returns md5sum for a message object of type '<UTMDrone>"
  "a50c965492d94784376dc0227b21a5a4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'UTMDrone)))
  "Returns md5sum for a message object of type 'UTMDrone"
  "a50c965492d94784376dc0227b21a5a4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<UTMDrone>)))
  "Returns full string definition for message of type '<UTMDrone>"
  (cl:format cl:nil "GPS next_WP #~%GPS cur_pos #~%~%float64 next_vel #~%float64 cur_vel #~%~%float64 next_heading #~%float64 cur_heading #~%~%int64 time~%int64 gps_time #~%~%float64 battery_soc~%~%int16 drone_priority #~%~%int64 ETA_next_WP #~%~%uint32 drone_id #~%~%================================================================================~%MSG: drone_decon/GPS~%float64 latitude~%float64 longitude~%float64 altitude~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'UTMDrone)))
  "Returns full string definition for message of type 'UTMDrone"
  (cl:format cl:nil "GPS next_WP #~%GPS cur_pos #~%~%float64 next_vel #~%float64 cur_vel #~%~%float64 next_heading #~%float64 cur_heading #~%~%int64 time~%int64 gps_time #~%~%float64 battery_soc~%~%int16 drone_priority #~%~%int64 ETA_next_WP #~%~%uint32 drone_id #~%~%================================================================================~%MSG: drone_decon/GPS~%float64 latitude~%float64 longitude~%float64 altitude~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <UTMDrone>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'next_WP))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'cur_pos))
     8
     8
     8
     8
     8
     8
     8
     2
     8
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <UTMDrone>))
  "Converts a ROS message object to a list"
  (cl:list 'UTMDrone
    (cl:cons ':next_WP (next_WP msg))
    (cl:cons ':cur_pos (cur_pos msg))
    (cl:cons ':next_vel (next_vel msg))
    (cl:cons ':cur_vel (cur_vel msg))
    (cl:cons ':next_heading (next_heading msg))
    (cl:cons ':cur_heading (cur_heading msg))
    (cl:cons ':time (time msg))
    (cl:cons ':gps_time (gps_time msg))
    (cl:cons ':battery_soc (battery_soc msg))
    (cl:cons ':drone_priority (drone_priority msg))
    (cl:cons ':ETA_next_WP (ETA_next_WP msg))
    (cl:cons ':drone_id (drone_id msg))
))
