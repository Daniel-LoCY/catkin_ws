; Auto-generated. Do not edit!


(cl:in-package color_shape_pair_pkg-srv)


;//! \htmlinclude event-request.msg.html

(cl:defclass <event-request> (roslisp-msg-protocol:ros-message)
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
    :initform 0)
   (shape
    :reader shape
    :initarg :shape
    :type cl:integer
    :initform 0))
)

(cl:defclass event-request (<event-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <event-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'event-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name color_shape_pair_pkg-srv:<event-request> is deprecated: use color_shape_pair_pkg-srv:event-request instead.")))

(cl:ensure-generic-function 'b-val :lambda-list '(m))
(cl:defmethod b-val ((m <event-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader color_shape_pair_pkg-srv:b-val is deprecated.  Use color_shape_pair_pkg-srv:b instead.")
  (b m))

(cl:ensure-generic-function 'g-val :lambda-list '(m))
(cl:defmethod g-val ((m <event-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader color_shape_pair_pkg-srv:g-val is deprecated.  Use color_shape_pair_pkg-srv:g instead.")
  (g m))

(cl:ensure-generic-function 'r-val :lambda-list '(m))
(cl:defmethod r-val ((m <event-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader color_shape_pair_pkg-srv:r-val is deprecated.  Use color_shape_pair_pkg-srv:r instead.")
  (r m))

(cl:ensure-generic-function 'shape-val :lambda-list '(m))
(cl:defmethod shape-val ((m <event-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader color_shape_pair_pkg-srv:shape-val is deprecated.  Use color_shape_pair_pkg-srv:shape instead.")
  (shape m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <event-request>) ostream)
  "Serializes a message object of type '<event-request>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <event-request>) istream)
  "Deserializes a message object of type '<event-request>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<event-request>)))
  "Returns string type for a service object of type '<event-request>"
  "color_shape_pair_pkg/eventRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'event-request)))
  "Returns string type for a service object of type 'event-request"
  "color_shape_pair_pkg/eventRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<event-request>)))
  "Returns md5sum for a message object of type '<event-request>"
  "175c913c60754681e08f22a3c88455e5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'event-request)))
  "Returns md5sum for a message object of type 'event-request"
  "175c913c60754681e08f22a3c88455e5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<event-request>)))
  "Returns full string definition for message of type '<event-request>"
  (cl:format cl:nil "int64 b~%int64 g~%int64 r~%int64 shape~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'event-request)))
  "Returns full string definition for message of type 'event-request"
  (cl:format cl:nil "int64 b~%int64 g~%int64 r~%int64 shape~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <event-request>))
  (cl:+ 0
     8
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <event-request>))
  "Converts a ROS message object to a list"
  (cl:list 'event-request
    (cl:cons ':b (b msg))
    (cl:cons ':g (g msg))
    (cl:cons ':r (r msg))
    (cl:cons ':shape (shape msg))
))
;//! \htmlinclude event-response.msg.html

(cl:defclass <event-response> (roslisp-msg-protocol:ros-message)
  ((s
    :reader s
    :initarg :s
    :type cl:string
    :initform ""))
)

(cl:defclass event-response (<event-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <event-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'event-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name color_shape_pair_pkg-srv:<event-response> is deprecated: use color_shape_pair_pkg-srv:event-response instead.")))

(cl:ensure-generic-function 's-val :lambda-list '(m))
(cl:defmethod s-val ((m <event-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader color_shape_pair_pkg-srv:s-val is deprecated.  Use color_shape_pair_pkg-srv:s instead.")
  (s m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <event-response>) ostream)
  "Serializes a message object of type '<event-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 's))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 's))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <event-response>) istream)
  "Deserializes a message object of type '<event-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<event-response>)))
  "Returns string type for a service object of type '<event-response>"
  "color_shape_pair_pkg/eventResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'event-response)))
  "Returns string type for a service object of type 'event-response"
  "color_shape_pair_pkg/eventResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<event-response>)))
  "Returns md5sum for a message object of type '<event-response>"
  "175c913c60754681e08f22a3c88455e5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'event-response)))
  "Returns md5sum for a message object of type 'event-response"
  "175c913c60754681e08f22a3c88455e5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<event-response>)))
  "Returns full string definition for message of type '<event-response>"
  (cl:format cl:nil "string s~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'event-response)))
  "Returns full string definition for message of type 'event-response"
  (cl:format cl:nil "string s~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <event-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 's))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <event-response>))
  "Converts a ROS message object to a list"
  (cl:list 'event-response
    (cl:cons ':s (s msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'event)))
  'event-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'event)))
  'event-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'event)))
  "Returns string type for a service object of type '<event>"
  "color_shape_pair_pkg/event")