; Auto-generated. Do not edit!


(cl:in-package image_pkg-srv)


;//! \htmlinclude transport_image-request.msg.html

(cl:defclass <transport_image-request> (roslisp-msg-protocol:ros-message)
  ((a
    :reader a
    :initarg :a
    :type sensor_msgs-msg:Image
    :initform (cl:make-instance 'sensor_msgs-msg:Image)))
)

(cl:defclass transport_image-request (<transport_image-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <transport_image-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'transport_image-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name image_pkg-srv:<transport_image-request> is deprecated: use image_pkg-srv:transport_image-request instead.")))

(cl:ensure-generic-function 'a-val :lambda-list '(m))
(cl:defmethod a-val ((m <transport_image-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader image_pkg-srv:a-val is deprecated.  Use image_pkg-srv:a instead.")
  (a m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <transport_image-request>) ostream)
  "Serializes a message object of type '<transport_image-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'a) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <transport_image-request>) istream)
  "Deserializes a message object of type '<transport_image-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'a) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<transport_image-request>)))
  "Returns string type for a service object of type '<transport_image-request>"
  "image_pkg/transport_imageRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'transport_image-request)))
  "Returns string type for a service object of type 'transport_image-request"
  "image_pkg/transport_imageRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<transport_image-request>)))
  "Returns md5sum for a message object of type '<transport_image-request>"
  "fdd66f87794e274f242af2380bc3fd1f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'transport_image-request)))
  "Returns md5sum for a message object of type 'transport_image-request"
  "fdd66f87794e274f242af2380bc3fd1f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<transport_image-request>)))
  "Returns full string definition for message of type '<transport_image-request>"
  (cl:format cl:nil "sensor_msgs/Image a~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of camera~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'transport_image-request)))
  "Returns full string definition for message of type 'transport_image-request"
  (cl:format cl:nil "sensor_msgs/Image a~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of camera~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <transport_image-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'a))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <transport_image-request>))
  "Converts a ROS message object to a list"
  (cl:list 'transport_image-request
    (cl:cons ':a (a msg))
))
;//! \htmlinclude transport_image-response.msg.html

(cl:defclass <transport_image-response> (roslisp-msg-protocol:ros-message)
  ((b
    :reader b
    :initarg :b
    :type sensor_msgs-msg:Image
    :initform (cl:make-instance 'sensor_msgs-msg:Image)))
)

(cl:defclass transport_image-response (<transport_image-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <transport_image-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'transport_image-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name image_pkg-srv:<transport_image-response> is deprecated: use image_pkg-srv:transport_image-response instead.")))

(cl:ensure-generic-function 'b-val :lambda-list '(m))
(cl:defmethod b-val ((m <transport_image-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader image_pkg-srv:b-val is deprecated.  Use image_pkg-srv:b instead.")
  (b m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <transport_image-response>) ostream)
  "Serializes a message object of type '<transport_image-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'b) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <transport_image-response>) istream)
  "Deserializes a message object of type '<transport_image-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'b) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<transport_image-response>)))
  "Returns string type for a service object of type '<transport_image-response>"
  "image_pkg/transport_imageResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'transport_image-response)))
  "Returns string type for a service object of type 'transport_image-response"
  "image_pkg/transport_imageResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<transport_image-response>)))
  "Returns md5sum for a message object of type '<transport_image-response>"
  "fdd66f87794e274f242af2380bc3fd1f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'transport_image-response)))
  "Returns md5sum for a message object of type 'transport_image-response"
  "fdd66f87794e274f242af2380bc3fd1f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<transport_image-response>)))
  "Returns full string definition for message of type '<transport_image-response>"
  (cl:format cl:nil "sensor_msgs/Image b~%~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of camera~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'transport_image-response)))
  "Returns full string definition for message of type 'transport_image-response"
  (cl:format cl:nil "sensor_msgs/Image b~%~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of camera~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <transport_image-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'b))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <transport_image-response>))
  "Converts a ROS message object to a list"
  (cl:list 'transport_image-response
    (cl:cons ':b (b msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'transport_image)))
  'transport_image-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'transport_image)))
  'transport_image-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'transport_image)))
  "Returns string type for a service object of type '<transport_image>"
  "image_pkg/transport_image")