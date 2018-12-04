; Auto-generated. Do not edit!


(cl:in-package drone_decon-msg)


;//! \htmlinclude UTMDroneList.msg.html

(cl:defclass <UTMDroneList> (roslisp-msg-protocol:ros-message)
  ((drone_list
    :reader drone_list
    :initarg :drone_list
    :type (cl:vector drone_decon-msg:UTMDrone)
   :initform (cl:make-array 0 :element-type 'drone_decon-msg:UTMDrone :initial-element (cl:make-instance 'drone_decon-msg:UTMDrone))))
)

(cl:defclass UTMDroneList (<UTMDroneList>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <UTMDroneList>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'UTMDroneList)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name drone_decon-msg:<UTMDroneList> is deprecated: use drone_decon-msg:UTMDroneList instead.")))

(cl:ensure-generic-function 'drone_list-val :lambda-list '(m))
(cl:defmethod drone_list-val ((m <UTMDroneList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader drone_decon-msg:drone_list-val is deprecated.  Use drone_decon-msg:drone_list instead.")
  (drone_list m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <UTMDroneList>) ostream)
  "Serializes a message object of type '<UTMDroneList>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'drone_list))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'drone_list))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <UTMDroneList>) istream)
  "Deserializes a message object of type '<UTMDroneList>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'drone_list) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'drone_list)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'drone_decon-msg:UTMDrone))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<UTMDroneList>)))
  "Returns string type for a message object of type '<UTMDroneList>"
  "drone_decon/UTMDroneList")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UTMDroneList)))
  "Returns string type for a message object of type 'UTMDroneList"
  "drone_decon/UTMDroneList")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<UTMDroneList>)))
  "Returns md5sum for a message object of type '<UTMDroneList>"
  "c07f9db1359ae55284964655b2dfadf8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'UTMDroneList)))
  "Returns md5sum for a message object of type 'UTMDroneList"
  "c07f9db1359ae55284964655b2dfadf8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<UTMDroneList>)))
  "Returns full string definition for message of type '<UTMDroneList>"
  (cl:format cl:nil "UTMDrone[] drone_list~%================================================================================~%MSG: drone_decon/UTMDrone~%GPS next_WP #~%GPS cur_pos #~%~%float64 next_vel #~%float64 cur_vel #~%~%float64 next_heading #~%float64 cur_heading #~%~%int64 time~%int64 gps_time #~%~%float64 battery_soc~%~%int16 drone_priority #~%~%int64 ETA_next_WP #~%~%uint32 drone_id #~%~%================================================================================~%MSG: drone_decon/GPS~%float64 latitude~%float64 longitude~%float64 altitude~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'UTMDroneList)))
  "Returns full string definition for message of type 'UTMDroneList"
  (cl:format cl:nil "UTMDrone[] drone_list~%================================================================================~%MSG: drone_decon/UTMDrone~%GPS next_WP #~%GPS cur_pos #~%~%float64 next_vel #~%float64 cur_vel #~%~%float64 next_heading #~%float64 cur_heading #~%~%int64 time~%int64 gps_time #~%~%float64 battery_soc~%~%int16 drone_priority #~%~%int64 ETA_next_WP #~%~%uint32 drone_id #~%~%================================================================================~%MSG: drone_decon/GPS~%float64 latitude~%float64 longitude~%float64 altitude~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <UTMDroneList>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'drone_list) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <UTMDroneList>))
  "Converts a ROS message object to a list"
  (cl:list 'UTMDroneList
    (cl:cons ':drone_list (drone_list msg))
))
