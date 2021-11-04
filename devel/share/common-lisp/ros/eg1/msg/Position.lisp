; Auto-generated. Do not edit!


(cl:in-package eg1-msg)


;//! \htmlinclude Position.msg.html

(cl:defclass <Position> (roslisp-msg-protocol:ros-message)
  ((profinet_msg
    :reader profinet_msg
    :initarg :profinet_msg
    :type cl:string
    :initform "")
   (main_portal
    :reader main_portal
    :initarg :main_portal
    :type cl:float
    :initform 0.0)
   (gripper
    :reader gripper
    :initarg :gripper
    :type cl:float
    :initform 0.0))
)

(cl:defclass Position (<Position>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Position>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Position)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name eg1-msg:<Position> is deprecated: use eg1-msg:Position instead.")))

(cl:ensure-generic-function 'profinet_msg-val :lambda-list '(m))
(cl:defmethod profinet_msg-val ((m <Position>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader eg1-msg:profinet_msg-val is deprecated.  Use eg1-msg:profinet_msg instead.")
  (profinet_msg m))

(cl:ensure-generic-function 'main_portal-val :lambda-list '(m))
(cl:defmethod main_portal-val ((m <Position>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader eg1-msg:main_portal-val is deprecated.  Use eg1-msg:main_portal instead.")
  (main_portal m))

(cl:ensure-generic-function 'gripper-val :lambda-list '(m))
(cl:defmethod gripper-val ((m <Position>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader eg1-msg:gripper-val is deprecated.  Use eg1-msg:gripper instead.")
  (gripper m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Position>) ostream)
  "Serializes a message object of type '<Position>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'profinet_msg))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'profinet_msg))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'main_portal))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'gripper))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Position>) istream)
  "Deserializes a message object of type '<Position>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'profinet_msg) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'profinet_msg) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'main_portal) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'gripper) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Position>)))
  "Returns string type for a message object of type '<Position>"
  "eg1/Position")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Position)))
  "Returns string type for a message object of type 'Position"
  "eg1/Position")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Position>)))
  "Returns md5sum for a message object of type '<Position>"
  "d583aa47902ed0af41ba41b575a0860f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Position)))
  "Returns md5sum for a message object of type 'Position"
  "d583aa47902ed0af41ba41b575a0860f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Position>)))
  "Returns full string definition for message of type '<Position>"
  (cl:format cl:nil "string profinet_msg~%float64 main_portal~%float64 gripper~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Position)))
  "Returns full string definition for message of type 'Position"
  (cl:format cl:nil "string profinet_msg~%float64 main_portal~%float64 gripper~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Position>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'profinet_msg))
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Position>))
  "Converts a ROS message object to a list"
  (cl:list 'Position
    (cl:cons ':profinet_msg (profinet_msg msg))
    (cl:cons ':main_portal (main_portal msg))
    (cl:cons ':gripper (gripper msg))
))
