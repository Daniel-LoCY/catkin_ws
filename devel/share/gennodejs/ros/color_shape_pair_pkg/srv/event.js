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

class eventRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.b = null;
      this.g = null;
      this.r = null;
      this.shape = null;
    }
    else {
      if (initObj.hasOwnProperty('b')) {
        this.b = initObj.b
      }
      else {
        this.b = 0;
      }
      if (initObj.hasOwnProperty('g')) {
        this.g = initObj.g
      }
      else {
        this.g = 0;
      }
      if (initObj.hasOwnProperty('r')) {
        this.r = initObj.r
      }
      else {
        this.r = 0;
      }
      if (initObj.hasOwnProperty('shape')) {
        this.shape = initObj.shape
      }
      else {
        this.shape = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type eventRequest
    // Serialize message field [b]
    bufferOffset = _serializer.int64(obj.b, buffer, bufferOffset);
    // Serialize message field [g]
    bufferOffset = _serializer.int64(obj.g, buffer, bufferOffset);
    // Serialize message field [r]
    bufferOffset = _serializer.int64(obj.r, buffer, bufferOffset);
    // Serialize message field [shape]
    bufferOffset = _serializer.int64(obj.shape, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type eventRequest
    let len;
    let data = new eventRequest(null);
    // Deserialize message field [b]
    data.b = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [g]
    data.g = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [r]
    data.r = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [shape]
    data.shape = _deserializer.int64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 32;
  }

  static datatype() {
    // Returns string type for a service object
    return 'color_shape_pair_pkg/eventRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5c790a1e3de39f277ec70a3ca47c36ae';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int64 b
    int64 g
    int64 r
    int64 shape
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new eventRequest(null);
    if (msg.b !== undefined) {
      resolved.b = msg.b;
    }
    else {
      resolved.b = 0
    }

    if (msg.g !== undefined) {
      resolved.g = msg.g;
    }
    else {
      resolved.g = 0
    }

    if (msg.r !== undefined) {
      resolved.r = msg.r;
    }
    else {
      resolved.r = 0
    }

    if (msg.shape !== undefined) {
      resolved.shape = msg.shape;
    }
    else {
      resolved.shape = 0
    }

    return resolved;
    }
};

class eventResponse {
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
    // Serializes a message object of type eventResponse
    // Serialize message field [s]
    bufferOffset = _serializer.string(obj.s, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type eventResponse
    let len;
    let data = new eventResponse(null);
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
    return 'color_shape_pair_pkg/eventResponse';
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
    const resolved = new eventResponse(null);
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
  Request: eventRequest,
  Response: eventResponse,
  md5sum() { return '175c913c60754681e08f22a3c88455e5'; },
  datatype() { return 'color_shape_pair_pkg/event'; }
};
