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

class RedirectDrone {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.drone_id = null;
      this.position = null;
      this.insertBeforeNextWayPoint = null;
      this.standByAndReplanRouteAtPoint = null;
    }
    else {
      if (initObj.hasOwnProperty('drone_id')) {
        this.drone_id = initObj.drone_id
      }
      else {
        this.drone_id = 0;
      }
      if (initObj.hasOwnProperty('position')) {
        this.position = initObj.position
      }
      else {
        this.position = new GPS();
      }
      if (initObj.hasOwnProperty('insertBeforeNextWayPoint')) {
        this.insertBeforeNextWayPoint = initObj.insertBeforeNextWayPoint
      }
      else {
        this.insertBeforeNextWayPoint = false;
      }
      if (initObj.hasOwnProperty('standByAndReplanRouteAtPoint')) {
        this.standByAndReplanRouteAtPoint = initObj.standByAndReplanRouteAtPoint
      }
      else {
        this.standByAndReplanRouteAtPoint = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RedirectDrone
    // Serialize message field [drone_id]
    bufferOffset = _serializer.uint32(obj.drone_id, buffer, bufferOffset);
    // Serialize message field [position]
    bufferOffset = GPS.serialize(obj.position, buffer, bufferOffset);
    // Serialize message field [insertBeforeNextWayPoint]
    bufferOffset = _serializer.bool(obj.insertBeforeNextWayPoint, buffer, bufferOffset);
    // Serialize message field [standByAndReplanRouteAtPoint]
    bufferOffset = _serializer.bool(obj.standByAndReplanRouteAtPoint, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RedirectDrone
    let len;
    let data = new RedirectDrone(null);
    // Deserialize message field [drone_id]
    data.drone_id = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [position]
    data.position = GPS.deserialize(buffer, bufferOffset);
    // Deserialize message field [insertBeforeNextWayPoint]
    data.insertBeforeNextWayPoint = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [standByAndReplanRouteAtPoint]
    data.standByAndReplanRouteAtPoint = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 30;
  }

  static datatype() {
    // Returns string type for a message object
    return 'drone_decon/RedirectDrone';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '07e5cac6757732dd9a419b2544615592';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint32 drone_id
    
    GPS position
    
    bool insertBeforeNextWayPoint
    bool standByAndReplanRouteAtPoint
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
    const resolved = new RedirectDrone(null);
    if (msg.drone_id !== undefined) {
      resolved.drone_id = msg.drone_id;
    }
    else {
      resolved.drone_id = 0
    }

    if (msg.position !== undefined) {
      resolved.position = GPS.Resolve(msg.position)
    }
    else {
      resolved.position = new GPS()
    }

    if (msg.insertBeforeNextWayPoint !== undefined) {
      resolved.insertBeforeNextWayPoint = msg.insertBeforeNextWayPoint;
    }
    else {
      resolved.insertBeforeNextWayPoint = false
    }

    if (msg.standByAndReplanRouteAtPoint !== undefined) {
      resolved.standByAndReplanRouteAtPoint = msg.standByAndReplanRouteAtPoint;
    }
    else {
      resolved.standByAndReplanRouteAtPoint = false
    }

    return resolved;
    }
};

module.exports = RedirectDrone;
