// Auto-generated. Do not edit!

// (in-package drone_decon.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class takeOffAndLandCheckRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.drone_id = null;
      this.isAsending = null;
    }
    else {
      if (initObj.hasOwnProperty('drone_id')) {
        this.drone_id = initObj.drone_id
      }
      else {
        this.drone_id = 0;
      }
      if (initObj.hasOwnProperty('isAsending')) {
        this.isAsending = initObj.isAsending
      }
      else {
        this.isAsending = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type takeOffAndLandCheckRequest
    // Serialize message field [drone_id]
    bufferOffset = _serializer.uint32(obj.drone_id, buffer, bufferOffset);
    // Serialize message field [isAsending]
    bufferOffset = _serializer.bool(obj.isAsending, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type takeOffAndLandCheckRequest
    let len;
    let data = new takeOffAndLandCheckRequest(null);
    // Deserialize message field [drone_id]
    data.drone_id = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [isAsending]
    data.isAsending = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 5;
  }

  static datatype() {
    // Returns string type for a service object
    return 'drone_decon/takeOffAndLandCheckRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd18bfc2001b6bb9f57d5c299264ba92c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    uint32 drone_id
    bool isAsending
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new takeOffAndLandCheckRequest(null);
    if (msg.drone_id !== undefined) {
      resolved.drone_id = msg.drone_id;
    }
    else {
      resolved.drone_id = 0
    }

    if (msg.isAsending !== undefined) {
      resolved.isAsending = msg.isAsending;
    }
    else {
      resolved.isAsending = false
    }

    return resolved;
    }
};

class takeOffAndLandCheckResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.takeOffIsSafe = null;
      this.maxAltitude = null;
      this.minAltitude = null;
    }
    else {
      if (initObj.hasOwnProperty('takeOffIsSafe')) {
        this.takeOffIsSafe = initObj.takeOffIsSafe
      }
      else {
        this.takeOffIsSafe = false;
      }
      if (initObj.hasOwnProperty('maxAltitude')) {
        this.maxAltitude = initObj.maxAltitude
      }
      else {
        this.maxAltitude = 0.0;
      }
      if (initObj.hasOwnProperty('minAltitude')) {
        this.minAltitude = initObj.minAltitude
      }
      else {
        this.minAltitude = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type takeOffAndLandCheckResponse
    // Serialize message field [takeOffIsSafe]
    bufferOffset = _serializer.bool(obj.takeOffIsSafe, buffer, bufferOffset);
    // Serialize message field [maxAltitude]
    bufferOffset = _serializer.float32(obj.maxAltitude, buffer, bufferOffset);
    // Serialize message field [minAltitude]
    bufferOffset = _serializer.float32(obj.minAltitude, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type takeOffAndLandCheckResponse
    let len;
    let data = new takeOffAndLandCheckResponse(null);
    // Deserialize message field [takeOffIsSafe]
    data.takeOffIsSafe = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [maxAltitude]
    data.maxAltitude = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [minAltitude]
    data.minAltitude = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 9;
  }

  static datatype() {
    // Returns string type for a service object
    return 'drone_decon/takeOffAndLandCheckResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '88752e30a307e729639b5720bb8af00f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    bool takeOffIsSafe
    float32 maxAltitude
    float32 minAltitude
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new takeOffAndLandCheckResponse(null);
    if (msg.takeOffIsSafe !== undefined) {
      resolved.takeOffIsSafe = msg.takeOffIsSafe;
    }
    else {
      resolved.takeOffIsSafe = false
    }

    if (msg.maxAltitude !== undefined) {
      resolved.maxAltitude = msg.maxAltitude;
    }
    else {
      resolved.maxAltitude = 0.0
    }

    if (msg.minAltitude !== undefined) {
      resolved.minAltitude = msg.minAltitude;
    }
    else {
      resolved.minAltitude = 0.0
    }

    return resolved;
    }
};

module.exports = {
  Request: takeOffAndLandCheckRequest,
  Response: takeOffAndLandCheckResponse,
  md5sum() { return '0304b59d69afd85db4e7a6b27d94aacb'; },
  datatype() { return 'drone_decon/takeOffAndLandCheck'; }
};
