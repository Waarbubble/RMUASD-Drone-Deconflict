; Auto-generated. Do not edit!


(cl:in-package drone_decon-msg)


;//! \htmlinclude RedirectDrone.msg.html

(cl:defclass <RedirectDrone> (roslisp-msg-protocol:ros-message)
  ((drone_id
    :reader drone_id
    :initarg :drone_id
    :type cl:integer
    :initform 0)
   (position
    :reader position
    :initarg :position
    :type drone_decon-msg:GPS
    :initform (cl:make-instance 'drone_decon-msg:GPS))
   (insertBeforeNextWayPoint
    :reader insertBeforeNextWayPoint
    :initarg :insertBeforeNextWayPoint
    :type cl:boolean
    :initform cl:nil)
   (standByAndReplanRouteAtPoint
    :reader standByAndReplanRouteAtPoint
    :initarg :standByAndReplanRouteAtPoint
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass RedirectDrone (<RedirectDrone>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RedirectDrone>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RedirectDrone)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name drone_decon-msg:<RedirectDrone> is deprecated: use drone_decon-msg:RedirectDrone instead.")))

(cl:ensure-generic-function 'drone_id-val :lambda-list '(m))
(cl:defmethod drone_id-val ((m <RedirectDrone>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader drone_decon-msg:drone_id-val is deprecated.  Use drone_decon-msg:drone_id instead.")
  (drone_id m))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <RedirectDrone>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader drone_decon-msg:position-val is deprecated.  Use drone_decon-msg:position instead.")
  (position m))

(cl:ensure-generic-function 'insertBeforeNextWayPoint-val :lambda-list '(m))
(cl:defmethod insertBeforeNextWayPoint-val ((m <RedirectDrone>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader drone_decon-msg:insertBeforeNextWayPoint-val is deprecated.  Use drone_decon-msg:insertBeforeNextWayPoint instead.")
  (insertBeforeNextWayPoint m))

(cl:ensure-generic-function 'standByAndReplanRouteAtPoint-val :lambda-list '(m))
(cl:defmethod standByAndReplanRouteAtPoint-val ((m <RedirectDrone>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader drone_decon-msg:standByAndReplanRouteAtPoint-val is deprecated.  Use drone_decon-msg:standByAndReplanRouteAtPoint instead.")
  (standByAndReplanRouteAtPoint m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RedirectDrone>) ostream)
  "Serializes a message object of type '<RedirectDrone>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'drone_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'drone_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'drone_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'drone_id)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'position) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'insertBeforeNextWayPoint) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'standByAndReplanRouteAtPoint) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RedirectDrone>) istream)
  "Deserializes a message object of type '<RedirectDrone>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'drone_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'drone_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'drone_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'drone_id)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'position) istream)
    (cl:setf (cl:slot-value msg 'insertBeforeNextWayPoint) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'standByAndReplanRouteAtPoint) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RedirectDrone>)))
  "Returns string type for a message object of type '<RedirectDrone>"
  "drone_decon/RedirectDrone")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RedirectDrone)))
  "Returns string type for a message object of type 'RedirectDrone"
  "drone_decon/RedirectDrone")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RedirectDrone>)))
  "Returns md5sum for a message object of type '<RedirectDrone>"
  "07e5cac6757732dd9a419b2544615592")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RedirectDrone)))
  "Returns md5sum for a message object of type 'RedirectDrone"
  "07e5cac6757732dd9a419b2544615592")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RedirectDrone>)))
  "Returns full string definition for message of type '<RedirectDrone>"
  (cl:format cl:nil "uint32 drone_id~%~%GPS position~%~%bool insertBeforeNextWayPoint~%bool standByAndReplanRouteAtPoint~%================================================================================~%MSG: drone_decon/GPS~%float64 latitude~%float64 longitude~%float64 altitude~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RedirectDrone)))
  "Returns full string definition for message of type 'RedirectDrone"
  (cl:format cl:nil "uint32 drone_id~%~%GPS position~%~%bool insertBeforeNextWayPoint~%bool standByAndReplanRouteAtPoint~%================================================================================~%MSG: drone_decon/GPS~%float64 latitude~%float64 longitude~%float64 altitude~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RedirectDrone>))
  (cl:+ 0
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'position))
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RedirectDrone>))
  "Converts a ROS message object to a list"
  (cl:list 'RedirectDrone
    (cl:cons ':drone_id (drone_id msg))
    (cl:cons ':position (position msg))
    (cl:cons ':insertBeforeNextWayPoint (insertBeforeNextWayPoint msg))
    (cl:cons ':standByAndReplanRouteAtPoint (standByAndReplanRouteAtPoint msg))
))
