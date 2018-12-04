; Auto-generated. Do not edit!


(cl:in-package drone_decon-srv)


;//! \htmlinclude takeOffAndLandCheck-request.msg.html

(cl:defclass <takeOffAndLandCheck-request> (roslisp-msg-protocol:ros-message)
  ((drone_id
    :reader drone_id
    :initarg :drone_id
    :type cl:integer
    :initform 0)
   (isAsending
    :reader isAsending
    :initarg :isAsending
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass takeOffAndLandCheck-request (<takeOffAndLandCheck-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <takeOffAndLandCheck-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'takeOffAndLandCheck-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name drone_decon-srv:<takeOffAndLandCheck-request> is deprecated: use drone_decon-srv:takeOffAndLandCheck-request instead.")))

(cl:ensure-generic-function 'drone_id-val :lambda-list '(m))
(cl:defmethod drone_id-val ((m <takeOffAndLandCheck-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader drone_decon-srv:drone_id-val is deprecated.  Use drone_decon-srv:drone_id instead.")
  (drone_id m))

(cl:ensure-generic-function 'isAsending-val :lambda-list '(m))
(cl:defmethod isAsending-val ((m <takeOffAndLandCheck-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader drone_decon-srv:isAsending-val is deprecated.  Use drone_decon-srv:isAsending instead.")
  (isAsending m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <takeOffAndLandCheck-request>) ostream)
  "Serializes a message object of type '<takeOffAndLandCheck-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'drone_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'drone_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'drone_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'drone_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'isAsending) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <takeOffAndLandCheck-request>) istream)
  "Deserializes a message object of type '<takeOffAndLandCheck-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'drone_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'drone_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'drone_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'drone_id)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'isAsending) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<takeOffAndLandCheck-request>)))
  "Returns string type for a service object of type '<takeOffAndLandCheck-request>"
  "drone_decon/takeOffAndLandCheckRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'takeOffAndLandCheck-request)))
  "Returns string type for a service object of type 'takeOffAndLandCheck-request"
  "drone_decon/takeOffAndLandCheckRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<takeOffAndLandCheck-request>)))
  "Returns md5sum for a message object of type '<takeOffAndLandCheck-request>"
  "0304b59d69afd85db4e7a6b27d94aacb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'takeOffAndLandCheck-request)))
  "Returns md5sum for a message object of type 'takeOffAndLandCheck-request"
  "0304b59d69afd85db4e7a6b27d94aacb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<takeOffAndLandCheck-request>)))
  "Returns full string definition for message of type '<takeOffAndLandCheck-request>"
  (cl:format cl:nil "~%uint32 drone_id~%bool isAsending~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'takeOffAndLandCheck-request)))
  "Returns full string definition for message of type 'takeOffAndLandCheck-request"
  (cl:format cl:nil "~%uint32 drone_id~%bool isAsending~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <takeOffAndLandCheck-request>))
  (cl:+ 0
     4
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <takeOffAndLandCheck-request>))
  "Converts a ROS message object to a list"
  (cl:list 'takeOffAndLandCheck-request
    (cl:cons ':drone_id (drone_id msg))
    (cl:cons ':isAsending (isAsending msg))
))
;//! \htmlinclude takeOffAndLandCheck-response.msg.html

(cl:defclass <takeOffAndLandCheck-response> (roslisp-msg-protocol:ros-message)
  ((takeOffIsSafe
    :reader takeOffIsSafe
    :initarg :takeOffIsSafe
    :type cl:boolean
    :initform cl:nil)
   (maxAltitude
    :reader maxAltitude
    :initarg :maxAltitude
    :type cl:float
    :initform 0.0)
   (minAltitude
    :reader minAltitude
    :initarg :minAltitude
    :type cl:float
    :initform 0.0))
)

(cl:defclass takeOffAndLandCheck-response (<takeOffAndLandCheck-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <takeOffAndLandCheck-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'takeOffAndLandCheck-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name drone_decon-srv:<takeOffAndLandCheck-response> is deprecated: use drone_decon-srv:takeOffAndLandCheck-response instead.")))

(cl:ensure-generic-function 'takeOffIsSafe-val :lambda-list '(m))
(cl:defmethod takeOffIsSafe-val ((m <takeOffAndLandCheck-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader drone_decon-srv:takeOffIsSafe-val is deprecated.  Use drone_decon-srv:takeOffIsSafe instead.")
  (takeOffIsSafe m))

(cl:ensure-generic-function 'maxAltitude-val :lambda-list '(m))
(cl:defmethod maxAltitude-val ((m <takeOffAndLandCheck-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader drone_decon-srv:maxAltitude-val is deprecated.  Use drone_decon-srv:maxAltitude instead.")
  (maxAltitude m))

(cl:ensure-generic-function 'minAltitude-val :lambda-list '(m))
(cl:defmethod minAltitude-val ((m <takeOffAndLandCheck-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader drone_decon-srv:minAltitude-val is deprecated.  Use drone_decon-srv:minAltitude instead.")
  (minAltitude m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <takeOffAndLandCheck-response>) ostream)
  "Serializes a message object of type '<takeOffAndLandCheck-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'takeOffIsSafe) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'maxAltitude))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'minAltitude))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <takeOffAndLandCheck-response>) istream)
  "Deserializes a message object of type '<takeOffAndLandCheck-response>"
    (cl:setf (cl:slot-value msg 'takeOffIsSafe) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'maxAltitude) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'minAltitude) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<takeOffAndLandCheck-response>)))
  "Returns string type for a service object of type '<takeOffAndLandCheck-response>"
  "drone_decon/takeOffAndLandCheckResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'takeOffAndLandCheck-response)))
  "Returns string type for a service object of type 'takeOffAndLandCheck-response"
  "drone_decon/takeOffAndLandCheckResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<takeOffAndLandCheck-response>)))
  "Returns md5sum for a message object of type '<takeOffAndLandCheck-response>"
  "0304b59d69afd85db4e7a6b27d94aacb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'takeOffAndLandCheck-response)))
  "Returns md5sum for a message object of type 'takeOffAndLandCheck-response"
  "0304b59d69afd85db4e7a6b27d94aacb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<takeOffAndLandCheck-response>)))
  "Returns full string definition for message of type '<takeOffAndLandCheck-response>"
  (cl:format cl:nil "~%bool takeOffIsSafe~%float32 maxAltitude~%float32 minAltitude~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'takeOffAndLandCheck-response)))
  "Returns full string definition for message of type 'takeOffAndLandCheck-response"
  (cl:format cl:nil "~%bool takeOffIsSafe~%float32 maxAltitude~%float32 minAltitude~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <takeOffAndLandCheck-response>))
  (cl:+ 0
     1
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <takeOffAndLandCheck-response>))
  "Converts a ROS message object to a list"
  (cl:list 'takeOffAndLandCheck-response
    (cl:cons ':takeOffIsSafe (takeOffIsSafe msg))
    (cl:cons ':maxAltitude (maxAltitude msg))
    (cl:cons ':minAltitude (minAltitude msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'takeOffAndLandCheck)))
  'takeOffAndLandCheck-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'takeOffAndLandCheck)))
  'takeOffAndLandCheck-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'takeOffAndLandCheck)))
  "Returns string type for a service object of type '<takeOffAndLandCheck>"
  "drone_decon/takeOffAndLandCheck")