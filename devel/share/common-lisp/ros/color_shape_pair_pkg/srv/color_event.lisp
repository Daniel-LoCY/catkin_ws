; Auto-generated. Do not edit!


(cl:in-package color_shape_pair_pkg-srv)


;//! \htmlinclude color_event-request.msg.html

(cl:defclass <color_event-request> (roslisp-msg-protocol:ros-message)
  ((b
    :reader b
    :initarg :b
    :type cl:integer
    :initform 0)
   (g
    :reader g
    :initarg :g
    :type cl:integer
    :initform 0)
   (r
    :reader r
    :initarg :r
    :type cl:integer
    :initform 0))
)

(cl:defclass color_event-request (<color_event-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <color_event-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'color_event-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name color_shape_pair_pkg-srv:<color_event-request> is deprecated: use color_shape_pair_pkg-srv:color_event-request instead.")))

(cl:ensure-generic-function 'b-val :lambda-list '(m))
(cl:defmethod b-val ((m <color_event-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader color_shape_pair_pkg-srv:b-val is deprecated.  Use color_shape_pair_pkg-srv:b instead.")
  (b m))

(cl:ensure-generic-function 'g-val :lambda-list '(m))
(cl:defmethod g-val ((m <color_event-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader color_shape_pair_pkg-srv:g-val is deprecated.  Use color_shape_pair_pkg-srv:g instead.")
  (g m))

(cl:ensure-generic-function 'r-val :lambda-list '(m))
(cl:defmethod r-val ((m <color_event-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader color_shape_pair_pkg-srv:r-val is deprecated.  Use color_shape_pair_pkg-srv:r instead.")
  (r m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <color_event-request>) ostream)
  "Serializes a message object of type '<color_event-request>"
  (cl:let* ((signed (cl:slot-value msg 'b)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'g)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'r)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <color_event-request>) istream)
  "Deserializes a message object of type '<color_event-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'b) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'g) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'r) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<color_event-request>)))
  "Returns string type for a service object of type '<color_event-request>"
  "color_shape_pair_pkg/color_eventRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'color_event-request)))
  "Returns string type for a service object of type 'color_event-request"
  "color_shape_pair_pkg/color_eventRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<color_event-request>)))
  "Returns md5sum for a message object of type '<color_event-request>"
  "6e158a8fb52b65fbc6ac817be43be292")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'color_event-request)))
  "Returns md5sum for a message object of type 'color_event-request"
  "6e158a8fb52b65fbc6ac817be43be292")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<color_event-request>)))
  "Returns full string definition for message of type '<color_event-request>"
  (cl:format cl:nil "int64 b~%int64 g~%int64 r~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'color_event-request)))
  "Returns full string definition for message of type 'color_event-request"
  (cl:format cl:nil "int64 b~%int64 g~%int64 r~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <color_event-request>))
  (cl:+ 0
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <color_event-request>))
  "Converts a ROS message object to a list"
  (cl:list 'color_event-request
    (cl:cons ':b (b msg))
    (cl:cons ':g (g msg))
    (cl:cons ':r (r msg))
))
;//! \htmlinclude color_event-response.msg.html

(cl:defclass <color_event-response> (roslisp-msg-protocol:ros-message)
  ((s
    :reader s
    :initarg :s
    :type cl:string
    :initform ""))
)

(cl:defclass color_event-response (<color_event-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <color_event-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'color_event-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name color_shape_pair_pkg-srv:<color_event-response> is deprecated: use color_shape_pair_pkg-srv:color_event-response instead.")))

(cl:ensure-generic-function 's-val :lambda-list '(m))
(cl:defmethod s-val ((m <color_event-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader color_shape_pair_pkg-srv:s-val is deprecated.  Use color_shape_pair_pkg-srv:s instead.")
  (s m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <color_event-response>) ostream)
  "Serializes a message object of type '<color_event-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 's))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 's))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <color_event-response>) istream)
  "Deserializes a message object of type '<color_event-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<color_event-response>)))
  "Returns string type for a service object of type '<color_event-response>"
  "color_shape_pair_pkg/color_eventResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'color_event-response)))
  "Returns string type for a service object of type 'color_event-response"
  "color_shape_pair_pkg/color_eventResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<color_event-response>)))
  "Returns md5sum for a message object of type '<color_event-response>"
  "6e158a8fb52b65fbc6ac817be43be292")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'color_event-response)))
  "Returns md5sum for a message object of type 'color_event-response"
  "6e158a8fb52b65fbc6ac817be43be292")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<color_event-response>)))
  "Returns full string definition for message of type '<color_event-response>"
  (cl:format cl:nil "string s~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'color_event-response)))
  "Returns full string definition for message of type 'color_event-response"
  (cl:format cl:nil "string s~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <color_event-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 's))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <color_event-response>))
  "Converts a ROS message object to a list"
  (cl:list 'color_event-response
    (cl:cons ':s (s msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'color_event)))
  'color_event-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'color_event)))
  'color_event-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'color_event)))
  "Returns string type for a service object of type '<color_event>"
  "color_shape_pair_pkg/color_event")