// Auto-generated. Do not edit!

// (in-package color_shape_pair_pkg.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let sensor_msgs = _finder('sensor_msgs');

//-----------------------------------------------------------

class image {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.a = null;
      this.r = null;
      this.g = null;
      this.b = null;
      this.frame_count = null;
      this.shape = null;
      this.shapex = null;
      this.shapey = null;
    }
    else {
      if (initObj.hasOwnProperty('a')) {
        this.a = initObj.a
      }
      else {
        this.a = new sensor_msgs.msg.Image();
      }
      if (initObj.hasOwnProperty('r')) {
        this.r = initObj.r
      }
      else {
        this.r = 0;
      }
      if (initObj.hasOwnProperty('g')) {
        this.g = initObj.g
      }
      else {
        this.g = 0;
      }
      if (initObj.hasOwnProperty('b')) {
        this.b = initObj.b
      }
      else {
        this.b = 0;
      }
      if (initObj.hasOwnProperty('frame_count')) {
        this.frame_count = initObj.frame_count
      }
      else {
        this.frame_count = 0;
      }
      if (initObj.hasOwnProperty('shape')) {
        this.shape = initObj.shape
      }
      else {
        this.shape = 0;
      }
      if (initObj.hasOwnProperty('shapex')) {
        this.shapex = initObj.shapex
      }
      else {
        this.shapex = [];
      }
      if (initObj.hasOwnProperty('shapey')) {
        this.shapey = initObj.shapey
      }
      else {
        this.shapey = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type image
    // Serialize message field [a]
    bufferOffset = sensor_msgs.msg.Image.serialize(obj.a, buffer, bufferOffset);
    // Serialize message field [r]
    bufferOffset = _serializer.int64(obj.r, buffer, bufferOffset);
    // Serialize message field [g]
    bufferOffset = _serializer.int64(obj.g, buffer, bufferOffset);
    // Serialize message field [b]
    bufferOffset = _serializer.int64(obj.b, buffer, bufferOffset);
    // Serialize message field [frame_count]
    bufferOffset = _serializer.int64(obj.frame_count, buffer, bufferOffset);
    // Serialize message field [shape]
    bufferOffset = _serializer.int64(obj.shape, buffer, bufferOffset);
    // Serialize message field [shapex]
    bufferOffset = _arraySerializer.int64(obj.shapex, buffer, bufferOffset, null);
    // Serialize message field [shapey]
    bufferOffset = _arraySerializer.int64(obj.shapey, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type image
    let len;
    let data = new image(null);
    // Deserialize message field [a]
    data.a = sensor_msgs.msg.Image.deserialize(buffer, bufferOffset);
    // Deserialize message field [r]
    data.r = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [g]
    data.g = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [b]
    data.b = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [frame_count]
    data.frame_count = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [shape]
    data.shape = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [shapex]
    data.shapex = _arrayDeserializer.int64(buffer, bufferOffset, null)
    // Deserialize message field [shapey]
    data.shapey = _arrayDeserializer.int64(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += sensor_msgs.msg.Image.getMessageSize(object.a);
    length += 8 * object.shapex.length;
    length += 8 * object.shapey.length;
    return length + 48;
  }

  static datatype() {
    // Returns string type for a message object
    return 'color_shape_pair_pkg/image';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '358a41a1c6ecbc24efeccee718e2089d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    sensor_msgs/Image a
    int64 r
    int64 g
    int64 b
    int64 frame_count
    int64 shape
    int64[] shapex
    int64[] shapey
    ================================================================================
    MSG: sensor_msgs/Image
    # This message contains an uncompressed image
    # (0, 0) is at top-left corner of image
    #
    
    Header header        # Header timestamp should be acquisition time of image
                         # Header frame_id should be optical frame of camera
                         # origin of frame should be optical center of camera
                         # +x should point to the right in the image
                         # +y should point down in the image
                         # +z should point into to plane of the image
                         # If the frame_id here and the frame_id of the CameraInfo
                         # message associated with the image conflict
                         # the behavior is undefined
    
    uint32 height         # image height, that is, number of rows
    uint32 width          # image width, that is, number of columns
    
    # The legal values for encoding are in file src/image_encodings.cpp
    # If you want to standardize a new string format, join
    # ros-users@lists.sourceforge.net and send an email proposing a new encoding.
    
    string encoding       # Encoding of pixels -- channel meaning, ordering, size
                          # taken from the list of strings in include/sensor_msgs/image_encodings.h
    
    uint8 is_bigendian    # is this data bigendian?
    uint32 step           # Full row length in bytes
    uint8[] data          # actual matrix data, size is (step * rows)
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    string frame_id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new image(null);
    if (msg.a !== undefined) {
      resolved.a = sensor_msgs.msg.Image.Resolve(msg.a)
    }
    else {
      resolved.a = new sensor_msgs.msg.Image()
    }

    if (msg.r !== undefined) {
      resolved.r = msg.r;
    }
    else {
      resolved.r = 0
    }

    if (msg.g !== undefined) {
      resolved.g = msg.g;
    }
    else {
      resolved.g = 0
    }

    if (msg.b !== undefined) {
      resolved.b = msg.b;
    }
    else {
      resolved.b = 0
    }

    if (msg.frame_count !== undefined) {
      resolved.frame_count = msg.frame_count;
    }
    else {
      resolved.frame_count = 0
    }

    if (msg.shape !== undefined) {
      resolved.shape = msg.shape;
    }
    else {
      resolved.shape = 0
    }

    if (msg.shapex !== undefined) {
      resolved.shapex = msg.shapex;
    }
    else {
      resolved.shapex = []
    }

    if (msg.shapey !== undefined) {
      resolved.shapey = msg.shapey;
    }
    else {
      resolved.shapey = []
    }

    return resolved;
    }
};

module.exports = image;
