// Auto-generated. Do not edit!

// (in-package drone_decon.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let UTMDrone = require('./UTMDrone.js');

//-----------------------------------------------------------

class UTMDroneList {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.drone_list = null;
    }
    else {
      if (initObj.hasOwnProperty('drone_list')) {
        this.drone_list = initObj.drone_list
      }
      else {
        this.drone_list = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type UTMDroneList
    // Serialize message field [drone_list]
    // Serialize the length for message field [drone_list]
    bufferOffset = _serializer.uint32(obj.drone_list.length, buffer, bufferOffset);
    obj.drone_list.forEach((val) => {
      bufferOffset = UTMDrone.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type UTMDroneList
    let len;
    let data = new UTMDroneList(null);
    // Deserialize message field [drone_list]
    // Deserialize array length for message field [drone_list]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.drone_list = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.drone_list[i] = UTMDrone.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 118 * object.drone_list.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'drone_decon/UTMDroneList';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c07f9db1359ae55284964655b2dfadf8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    UTMDrone[] drone_list
    ================================================================================
    MSG: drone_decon/UTMDrone
    GPS next_WP #
    GPS cur_pos #
    
    float64 next_vel #
    float64 cur_vel #
    
    float64 next_heading #
    float64 cur_heading #
    
    int64 time
    int64 gps_time #
    
    float64 battery_soc
    
    int16 drone_priority #
    
    int64 ETA_next_WP #
    
    uint32 drone_id #
    
    ================================================================================
    MSG: drone_decon/GPS
    float64 latitude
    float64 longitude
    float64 altitude
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new UTMDroneList(null);
    if (msg.drone_list !== undefined) {
      resolved.drone_list = new Array(msg.drone_list.length);
      for (let i = 0; i < resolved.drone_list.length; ++i) {
        resolved.drone_list[i] = UTMDrone.Resolve(msg.drone_list[i]);
      }
    }
    else {
      resolved.drone_list = []
    }

    return resolved;
    }
};

module.exports = UTMDroneList;
