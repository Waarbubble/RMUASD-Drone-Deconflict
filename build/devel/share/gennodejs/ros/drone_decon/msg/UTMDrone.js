// Auto-generated. Do not edit!

// (in-package drone_decon.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let GPS = require('./GPS.js');

//-----------------------------------------------------------

class UTMDrone {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.next_WP = null;
      this.cur_pos = null;
      this.next_vel = null;
      this.cur_vel = null;
      this.next_heading = null;
      this.cur_heading = null;
      this.time = null;
      this.gps_time = null;
      this.battery_soc = null;
      this.drone_priority = null;
      this.ETA_next_WP = null;
      this.drone_id = null;
    }
    else {
      if (initObj.hasOwnProperty('next_WP')) {
        this.next_WP = initObj.next_WP
      }
      else {
        this.next_WP = new GPS();
      }
      if (initObj.hasOwnProperty('cur_pos')) {
        this.cur_pos = initObj.cur_pos
      }
      else {
        this.cur_pos = new GPS();
      }
      if (initObj.hasOwnProperty('next_vel')) {
        this.next_vel = initObj.next_vel
      }
      else {
        this.next_vel = 0.0;
      }
      if (initObj.hasOwnProperty('cur_vel')) {
        this.cur_vel = initObj.cur_vel
      }
      else {
        this.cur_vel = 0.0;
      }
      if (initObj.hasOwnProperty('next_heading')) {
        this.next_heading = initObj.next_heading
      }
      else {
        this.next_heading = 0.0;
      }
      if (initObj.hasOwnProperty('cur_heading')) {
        this.cur_heading = initObj.cur_heading
      }
      else {
        this.cur_heading = 0.0;
      }
      if (initObj.hasOwnProperty('time')) {
        this.time = initObj.time
      }
      else {
        this.time = 0;
      }
      if (initObj.hasOwnProperty('gps_time')) {
        this.gps_time = initObj.gps_time
      }
      else {
        this.gps_time = 0;
      }
      if (initObj.hasOwnProperty('battery_soc')) {
        this.battery_soc = initObj.battery_soc
      }
      else {
        this.battery_soc = 0.0;
      }
      if (initObj.hasOwnProperty('drone_priority')) {
        this.drone_priority = initObj.drone_priority
      }
      else {
        this.drone_priority = 0;
      }
      if (initObj.hasOwnProperty('ETA_next_WP')) {
        this.ETA_next_WP = initObj.ETA_next_WP
      }
      else {
        this.ETA_next_WP = 0;
      }
      if (initObj.hasOwnProperty('drone_id')) {
        this.drone_id = initObj.drone_id
      }
      else {
        this.drone_id = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type UTMDrone
    // Serialize message field [next_WP]
    bufferOffset = GPS.serialize(obj.next_WP, buffer, bufferOffset);
    // Serialize message field [cur_pos]
    bufferOffset = GPS.serialize(obj.cur_pos, buffer, bufferOffset);
    // Serialize message field [next_vel]
    bufferOffset = _serializer.float64(obj.next_vel, buffer, bufferOffset);
    // Serialize message field [cur_vel]
    bufferOffset = _serializer.float64(obj.cur_vel, buffer, bufferOffset);
    // Serialize message field [next_heading]
    bufferOffset = _serializer.float64(obj.next_heading, buffer, bufferOffset);
    // Serialize message field [cur_heading]
    bufferOffset = _serializer.float64(obj.cur_heading, buffer, bufferOffset);
    // Serialize message field [time]
    bufferOffset = _serializer.int64(obj.time, buffer, bufferOffset);
    // Serialize message field [gps_time]
    bufferOffset = _serializer.int64(obj.gps_time, buffer, bufferOffset);
    // Serialize message field [battery_soc]
    bufferOffset = _serializer.float64(obj.battery_soc, buffer, bufferOffset);
    // Serialize message field [drone_priority]
    bufferOffset = _serializer.int16(obj.drone_priority, buffer, bufferOffset);
    // Serialize message field [ETA_next_WP]
    bufferOffset = _serializer.int64(obj.ETA_next_WP, buffer, bufferOffset);
    // Serialize message field [drone_id]
    bufferOffset = _serializer.uint32(obj.drone_id, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type UTMDrone
    let len;
    let data = new UTMDrone(null);
    // Deserialize message field [next_WP]
    data.next_WP = GPS.deserialize(buffer, bufferOffset);
    // Deserialize message field [cur_pos]
    data.cur_pos = GPS.deserialize(buffer, bufferOffset);
    // Deserialize message field [next_vel]
    data.next_vel = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [cur_vel]
    data.cur_vel = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [next_heading]
    data.next_heading = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [cur_heading]
    data.cur_heading = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [time]
    data.time = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [gps_time]
    data.gps_time = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [battery_soc]
    data.battery_soc = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [drone_priority]
    data.drone_priority = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [ETA_next_WP]
    data.ETA_next_WP = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [drone_id]
    data.drone_id = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 118;
  }

  static datatype() {
    // Returns string type for a message object
    return 'drone_decon/UTMDrone';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a50c965492d94784376dc0227b21a5a4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new UTMDrone(null);
    if (msg.next_WP !== undefined) {
      resolved.next_WP = GPS.Resolve(msg.next_WP)
    }
    else {
      resolved.next_WP = new GPS()
    }

    if (msg.cur_pos !== undefined) {
      resolved.cur_pos = GPS.Resolve(msg.cur_pos)
    }
    else {
      resolved.cur_pos = new GPS()
    }

    if (msg.next_vel !== undefined) {
      resolved.next_vel = msg.next_vel;
    }
    else {
      resolved.next_vel = 0.0
    }

    if (msg.cur_vel !== undefined) {
      resolved.cur_vel = msg.cur_vel;
    }
    else {
      resolved.cur_vel = 0.0
    }

    if (msg.next_heading !== undefined) {
      resolved.next_heading = msg.next_heading;
    }
    else {
      resolved.next_heading = 0.0
    }

    if (msg.cur_heading !== undefined) {
      resolved.cur_heading = msg.cur_heading;
    }
    else {
      resolved.cur_heading = 0.0
    }

    if (msg.time !== undefined) {
      resolved.time = msg.time;
    }
    else {
      resolved.time = 0
    }

    if (msg.gps_time !== undefined) {
      resolved.gps_time = msg.gps_time;
    }
    else {
      resolved.gps_time = 0
    }

    if (msg.battery_soc !== undefined) {
      resolved.battery_soc = msg.battery_soc;
    }
    else {
      resolved.battery_soc = 0.0
    }

    if (msg.drone_priority !== undefined) {
      resolved.drone_priority = msg.drone_priority;
    }
    else {
      resolved.drone_priority = 0
    }

    if (msg.ETA_next_WP !== undefined) {
      resolved.ETA_next_WP = msg.ETA_next_WP;
    }
    else {
      resolved.ETA_next_WP = 0
    }

    if (msg.drone_id !== undefined) {
      resolved.drone_id = msg.drone_id;
    }
    else {
      resolved.drone_id = 0
    }

    return resolved;
    }
};

module.exports = UTMDrone;
