; Auto-generated. Do not edit!


(cl:in-package plumbing_apis-msg)


;//! \htmlinclude Msg01.msg.html

(cl:defclass <Msg01> (roslisp-msg-protocol:ros-message)
  ((IntMsg01
    :reader IntMsg01
    :initarg :IntMsg01
    :type cl:integer
    :initform 0))
)

(cl:defclass Msg01 (<Msg01>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Msg01>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Msg01)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name plumbing_apis-msg:<Msg01> is deprecated: use plumbing_apis-msg:Msg01 instead.")))

(cl:ensure-generic-function 'IntMsg01-val :lambda-list '(m))
(cl:defmethod IntMsg01-val ((m <Msg01>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader plumbing_apis-msg:IntMsg01-val is deprecated.  Use plumbing_apis-msg:IntMsg01 instead.")
  (IntMsg01 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Msg01>) ostream)
  "Serializes a message object of type '<Msg01>"
  (cl:let* ((signed (cl:slot-value msg 'IntMsg01)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Msg01>) istream)
  "Deserializes a message object of type '<Msg01>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'IntMsg01) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Msg01>)))
  "Returns string type for a message object of type '<Msg01>"
  "plumbing_apis/Msg01")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Msg01)))
  "Returns string type for a message object of type 'Msg01"
  "plumbing_apis/Msg01")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Msg01>)))
  "Returns md5sum for a message object of type '<Msg01>"
  "ea9a3e4be6d6b607a1aa1fd01d384964")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Msg01)))
  "Returns md5sum for a message object of type 'Msg01"
  "ea9a3e4be6d6b607a1aa1fd01d384964")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Msg01>)))
  "Returns full string definition for message of type '<Msg01>"
  (cl:format cl:nil "int32 IntMsg01~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Msg01)))
  "Returns full string definition for message of type 'Msg01"
  (cl:format cl:nil "int32 IntMsg01~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Msg01>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Msg01>))
  "Converts a ROS message object to a list"
  (cl:list 'Msg01
    (cl:cons ':IntMsg01 (IntMsg01 msg))
))
