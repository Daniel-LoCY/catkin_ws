// Auto-generated. Do not edit!

// (in-package color_shape_pair_pkg.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class shape_eventRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.shape = null;
    }
    else {
      if (initObj.hasOwnProperty('shape')) {
        this.shape = initObj.shape
      }
      else {
        this.shape = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type shape_eventRequest
    // Serialize message field [shape]
    bufferOffset = _serializer.int64(obj.shape, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type shape_eventRequest
    let len;
    let data = new shape_eventRequest(null);
    // Deserialize message field [shape]
    data.shape = _deserializer.int64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'color_shape_pair_pkg/shape_eventRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9ee65fe15ebe84e535bbd0087a9af6ce';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int64 shape
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new shape_eventRequest(null);
    if (msg.shape !== undefined) {
      resolved.shape = msg.shape;
    }
    else {
      resolved.shape = 0
    }

    return resolved;
    }
};

class shape_eventResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.s = null;
    }
    else {
      if (initObj.hasOwnProperty('s')) {
        this.s = initObj.s
      }
      else {
        this.s = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type shape_eventResponse
    // Serialize message field [s]
    bufferOffset = _serializer.string(obj.s, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type shape_eventResponse
    let len;
    let data = new shape_eventResponse(null);
    // Deserialize message field [s]
    data.s = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.s);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'color_shape_pair_pkg/shape_eventResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '81af3411577d82a6786258523fc891ce';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string s
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new shape_eventResponse(null);
    if (msg.s !== undefined) {
      resolved.s = msg.s;
    }
    else {
      resolved.s = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: shape_eventRequest,
  Response: shape_eventResponse,
  md5sum() { return 'ebec1319769de8764c53bcc75605e37a'; },
  datatype() { return 'color_shape_pair_pkg/shape_event'; }
};
