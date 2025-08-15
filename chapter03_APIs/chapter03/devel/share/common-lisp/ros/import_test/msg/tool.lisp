; Auto-generated. Do not edit!


(cl:in-package import_test-msg)


;//! \htmlinclude tool.msg.html

(cl:defclass <tool> (roslisp-msg-protocol:ros-message)
  ((IntMsg01
    :reader IntMsg01
    :initarg :IntMsg01
    :type cl:integer
    :initform 0))
)

(cl:defclass tool (<tool>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <tool>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'tool)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name import_test-msg:<tool> is deprecated: use import_test-msg:tool instead.")))

(cl:ensure-generic-function 'IntMsg01-val :lambda-list '(m))
(cl:defmethod IntMsg01-val ((m <tool>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader import_test-msg:IntMsg01-val is deprecated.  Use import_test-msg:IntMsg01 instead.")
  (IntMsg01 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <tool>) ostream)
  "Serializes a message object of type '<tool>"
  (cl:let* ((signed (cl:slot-value msg 'IntMsg01)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <tool>) istream)
  "Deserializes a message object of type '<tool>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'IntMsg01) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<tool>)))
  "Returns string type for a message object of type '<tool>"
  "import_test/tool")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'tool)))
  "Returns string type for a message object of type 'tool"
  "import_test/tool")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<tool>)))
  "Returns md5sum for a message object of type '<tool>"
  "ea9a3e4be6d6b607a1aa1fd01d384964")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'tool)))
  "Returns md5sum for a message object of type 'tool"
  "ea9a3e4be6d6b607a1aa1fd01d384964")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<tool>)))
  "Returns full string definition for message of type '<tool>"
  (cl:format cl:nil "int32 IntMsg01~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'tool)))
  "Returns full string definition for message of type 'tool"
  (cl:format cl:nil "int32 IntMsg01~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <tool>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <tool>))
  "Converts a ROS message object to a list"
  (cl:list 'tool
    (cl:cons ':IntMsg01 (IntMsg01 msg))
))
