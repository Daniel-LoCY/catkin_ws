; Auto-generated. Do not edit!


(cl:in-package color_shape_pair_pkg-msg)


;//! \htmlinclude shape.msg.html

(cl:defclass <shape> (roslisp-msg-protocol:ros-message)
  ((shape
    :reader shape
    :initarg :shape
    :type cl:string
    :initform ""))
)

(cl:defclass shape (<shape>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <shape>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'shape)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name color_shape_pair_pkg-msg:<shape> is deprecated: use color_shape_pair_pkg-msg:shape instead.")))

(cl:ensure-generic-function 'shape-val :lambda-list '(m))
(cl:defmethod shape-val ((m <shape>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader color_shape_pair_pkg-msg:shape-val is deprecated.  Use color_shape_pair_pkg-msg:shape instead.")
  (shape m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <shape>) ostream)
  "Serializes a message object of type '<shape>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'shape))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'shape))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <shape>) istream)
  "Deserializes a message object of type '<shape>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'shape) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'shape) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<shape>)))
  "Returns string type for a message object of type '<shape>"
  "color_shape_pair_pkg/shape")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'shape)))
  "Returns string type for a message object of type 'shape"
  "color_shape_pair_pkg/shape")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<shape>)))
  "Returns md5sum for a message object of type '<shape>"
  "fa50c30980f0f012451f487eb6d76d53")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'shape)))
  "Returns md5sum for a message object of type 'shape"
  "fa50c30980f0f012451f487eb6d76d53")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<shape>)))
  "Returns full string definition for message of type '<shape>"
  (cl:format cl:nil "string shape~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'shape)))
  "Returns full string definition for message of type 'shape"
  (cl:format cl:nil "string shape~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <shape>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'shape))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <shape>))
  "Converts a ROS message object to a list"
  (cl:list 'shape
    (cl:cons ':shape (shape msg))
))
