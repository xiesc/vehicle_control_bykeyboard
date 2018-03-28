; Auto-generated. Do not edit!


(cl:in-package tourancontrol-msg)


;//! \htmlinclude tourancontrol.msg.html

(cl:defclass <tourancontrol> (roslisp-msg-protocol:ros-message)
  ((acceleration
    :reader acceleration
    :initarg :acceleration
    :type cl:float
    :initform 0.0)
   (angular
    :reader angular
    :initarg :angular
    :type cl:float
    :initform 0.0))
)

(cl:defclass tourancontrol (<tourancontrol>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <tourancontrol>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'tourancontrol)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tourancontrol-msg:<tourancontrol> is deprecated: use tourancontrol-msg:tourancontrol instead.")))

(cl:ensure-generic-function 'acceleration-val :lambda-list '(m))
(cl:defmethod acceleration-val ((m <tourancontrol>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tourancontrol-msg:acceleration-val is deprecated.  Use tourancontrol-msg:acceleration instead.")
  (acceleration m))

(cl:ensure-generic-function 'angular-val :lambda-list '(m))
(cl:defmethod angular-val ((m <tourancontrol>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tourancontrol-msg:angular-val is deprecated.  Use tourancontrol-msg:angular instead.")
  (angular m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <tourancontrol>) ostream)
  "Serializes a message object of type '<tourancontrol>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'acceleration))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'angular))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <tourancontrol>) istream)
  "Deserializes a message object of type '<tourancontrol>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'acceleration) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'angular) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<tourancontrol>)))
  "Returns string type for a message object of type '<tourancontrol>"
  "tourancontrol/tourancontrol")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'tourancontrol)))
  "Returns string type for a message object of type 'tourancontrol"
  "tourancontrol/tourancontrol")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<tourancontrol>)))
  "Returns md5sum for a message object of type '<tourancontrol>"
  "3729754d76c9e6eced875888c7d60e93")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'tourancontrol)))
  "Returns md5sum for a message object of type 'tourancontrol"
  "3729754d76c9e6eced875888c7d60e93")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<tourancontrol>)))
  "Returns full string definition for message of type '<tourancontrol>"
  (cl:format cl:nil "float32 acceleration~%float32 angular~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'tourancontrol)))
  "Returns full string definition for message of type 'tourancontrol"
  (cl:format cl:nil "float32 acceleration~%float32 angular~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <tourancontrol>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <tourancontrol>))
  "Converts a ROS message object to a list"
  (cl:list 'tourancontrol
    (cl:cons ':acceleration (acceleration msg))
    (cl:cons ':angular (angular msg))
))
