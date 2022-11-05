; Auto-generated. Do not edit!


(cl:in-package image_msg_pkg-msg)


;//! \htmlinclude event.msg.html

(cl:defclass <event> (roslisp-msg-protocol:ros-message)
  ((a
    :reader a
    :initarg :a
    :type cl:integer
    :initform 0))
)

(cl:defclass event (<event>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <event>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'event)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name image_msg_pkg-msg:<event> is deprecated: use image_msg_pkg-msg:event instead.")))

(cl:ensure-generic-function 'a-val :lambda-list '(m))
(cl:defmethod a-val ((m <event>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader image_msg_pkg-msg:a-val is deprecated.  Use image_msg_pkg-msg:a instead.")
  (a m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <event>) ostream)
  "Serializes a message object of type '<event>"
  (cl:let* ((signed (cl:slot-value msg 'a)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <event>) istream)
  "Deserializes a message object of type '<event>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'a) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<event>)))
  "Returns string type for a message object of type '<event>"
  "image_msg_pkg/event")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'event)))
  "Returns string type for a message object of type 'event"
  "image_msg_pkg/event")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<event>)))
  "Returns md5sum for a message object of type '<event>"
  "019706110004b728d56d8baaa8e32797")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'event)))
  "Returns md5sum for a message object of type 'event"
  "019706110004b728d56d8baaa8e32797")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<event>)))
  "Returns full string definition for message of type '<event>"
  (cl:format cl:nil "int64 a~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'event)))
  "Returns full string definition for message of type 'event"
  (cl:format cl:nil "int64 a~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <event>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <event>))
  "Converts a ROS message object to a list"
  (cl:list 'event
    (cl:cons ':a (a msg))
))
