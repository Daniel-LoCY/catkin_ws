; Auto-generated. Do not edit!


(cl:in-package color_shape_pair_pkg-srv)


;//! \htmlinclude shape_event-request.msg.html

(cl:defclass <shape_event-request> (roslisp-msg-protocol:ros-message)
  ((shape
    :reader shape
    :initarg :shape
    :type cl:integer
    :initform 0))
)

(cl:defclass shape_event-request (<shape_event-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <shape_event-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'shape_event-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name color_shape_pair_pkg-srv:<shape_event-request> is deprecated: use color_shape_pair_pkg-srv:shape_event-request instead.")))

(cl:ensure-generic-function 'shape-val :lambda-list '(m))
(cl:defmethod shape-val ((m <shape_event-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader color_shape_pair_pkg-srv:shape-val is deprecated.  Use color_shape_pair_pkg-srv:shape instead.")
  (shape m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <shape_event-request>) ostream)
  "Serializes a message object of type '<shape_event-request>"
  (cl:let* ((signed (cl:slot-value msg 'shape)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <shape_event-request>) istream)
  "Deserializes a message object of type '<shape_event-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'shape) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<shape_event-request>)))
  "Returns string type for a service object of type '<shape_event-request>"
  "color_shape_pair_pkg/shape_eventRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'shape_event-request)))
  "Returns string type for a service object of type 'shape_event-request"
  "color_shape_pair_pkg/shape_eventRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<shape_event-request>)))
  "Returns md5sum for a message object of type '<shape_event-request>"
  "ebec1319769de8764c53bcc75605e37a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'shape_event-request)))
  "Returns md5sum for a message object of type 'shape_event-request"
  "ebec1319769de8764c53bcc75605e37a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<shape_event-request>)))
  "Returns full string definition for message of type '<shape_event-request>"
  (cl:format cl:nil "int64 shape~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'shape_event-request)))
  "Returns full string definition for message of type 'shape_event-request"
  (cl:format cl:nil "int64 shape~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <shape_event-request>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <shape_event-request>))
  "Converts a ROS message object to a list"
  (cl:list 'shape_event-request
    (cl:cons ':shape (shape msg))
))
;//! \htmlinclude shape_event-response.msg.html

(cl:defclass <shape_event-response> (roslisp-msg-protocol:ros-message)
  ((s
    :reader s
    :initarg :s
    :type cl:string
    :initform ""))
)

(cl:defclass shape_event-response (<shape_event-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <shape_event-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'shape_event-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name color_shape_pair_pkg-srv:<shape_event-response> is deprecated: use color_shape_pair_pkg-srv:shape_event-response instead.")))

(cl:ensure-generic-function 's-val :lambda-list '(m))
(cl:defmethod s-val ((m <shape_event-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader color_shape_pair_pkg-srv:s-val is deprecated.  Use color_shape_pair_pkg-srv:s instead.")
  (s m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <shape_event-response>) ostream)
  "Serializes a message object of type '<shape_event-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 's))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 's))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <shape_event-response>) istream)
  "Deserializes a message object of type '<shape_event-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 's) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 's) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<shape_event-response>)))
  "Returns string type for a service object of type '<shape_event-response>"
  "color_shape_pair_pkg/shape_eventResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'shape_event-response)))
  "Returns string type for a service object of type 'shape_event-response"
  "color_shape_pair_pkg/shape_eventResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<shape_event-response>)))
  "Returns md5sum for a message object of type '<shape_event-response>"
  "ebec1319769de8764c53bcc75605e37a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'shape_event-response)))
  "Returns md5sum for a message object of type 'shape_event-response"
  "ebec1319769de8764c53bcc75605e37a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<shape_event-response>)))
  "Returns full string definition for message of type '<shape_event-response>"
  (cl:format cl:nil "string s~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'shape_event-response)))
  "Returns full string definition for message of type 'shape_event-response"
  (cl:format cl:nil "string s~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <shape_event-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 's))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <shape_event-response>))
  "Converts a ROS message object to a list"
  (cl:list 'shape_event-response
    (cl:cons ':s (s msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'shape_event)))
  'shape_event-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'shape_event)))
  'shape_event-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'shape_event)))
  "Returns string type for a service object of type '<shape_event>"
  "color_shape_pair_pkg/shape_event")