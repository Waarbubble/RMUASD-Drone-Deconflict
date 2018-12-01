; Auto-generated. Do not edit!


(cl:in-package drone_decon-msg)


;//! \htmlinclude RegisterDrone.msg.html

(cl:defclass <RegisterDrone> (roslisp-msg-protocol:ros-message)
  ((drone_id
    :reader drone_id
    :initarg :drone_id
    :type cl:integer
    :initform 0))
)

(cl:defclass RegisterDrone (<RegisterDrone>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RegisterDrone>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RegisterDrone)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name drone_decon-msg:<RegisterDrone> is deprecated: use drone_decon-msg:RegisterDrone instead.")))

(cl:ensure-generic-function 'drone_id-val :lambda-list '(m))
(cl:defmethod drone_id-val ((m <RegisterDrone>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader drone_decon-msg:drone_id-val is deprecated.  Use drone_decon-msg:drone_id instead.")
  (drone_id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RegisterDrone>) ostream)
  "Serializes a message object of type '<RegisterDrone>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'drone_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'drone_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'drone_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'drone_id)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RegisterDrone>) istream)
  "Deserializes a message object of type '<RegisterDrone>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'drone_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'drone_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'drone_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'drone_id)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RegisterDrone>)))
  "Returns string type for a message object of type '<RegisterDrone>"
  "drone_decon/RegisterDrone")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RegisterDrone)))
  "Returns string type for a message object of type 'RegisterDrone"
  "drone_decon/RegisterDrone")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RegisterDrone>)))
  "Returns md5sum for a message object of type '<RegisterDrone>"
  "1d2b88006655e09d50ef5be4d2a6c794")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RegisterDrone)))
  "Returns md5sum for a message object of type 'RegisterDrone"
  "1d2b88006655e09d50ef5be4d2a6c794")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RegisterDrone>)))
  "Returns full string definition for message of type '<RegisterDrone>"
  (cl:format cl:nil "uint32 drone_id~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RegisterDrone)))
  "Returns full string definition for message of type 'RegisterDrone"
  (cl:format cl:nil "uint32 drone_id~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RegisterDrone>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RegisterDrone>))
  "Converts a ROS message object to a list"
  (cl:list 'RegisterDrone
    (cl:cons ':drone_id (drone_id msg))
))
