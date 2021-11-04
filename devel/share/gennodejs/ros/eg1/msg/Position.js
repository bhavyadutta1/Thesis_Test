// Auto-generated. Do not edit!

// (in-package eg1.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class Position {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.profinet_msg = null;
      this.main_portal = null;
      this.gripper = null;
    }
    else {
      if (initObj.hasOwnProperty('profinet_msg')) {
        this.profinet_msg = initObj.profinet_msg
      }
      else {
        this.profinet_msg = '';
      }
      if (initObj.hasOwnProperty('main_portal')) {
        this.main_portal = initObj.main_portal
      }
      else {
        this.main_portal = 0.0;
      }
      if (initObj.hasOwnProperty('gripper')) {
        this.gripper = initObj.gripper
      }
      else {
        this.gripper = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Position
    // Serialize message field [profinet_msg]
    bufferOffset = _serializer.string(obj.profinet_msg, buffer, bufferOffset);
    // Serialize message field [main_portal]
    bufferOffset = _serializer.float64(obj.main_portal, buffer, bufferOffset);
    // Serialize message field [gripper]
    bufferOffset = _serializer.float64(obj.gripper, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Position
    let len;
    let data = new Position(null);
    // Deserialize message field [profinet_msg]
    data.profinet_msg = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [main_portal]
    data.main_portal = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [gripper]
    data.gripper = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.profinet_msg);
    return length + 20;
  }

  static datatype() {
    // Returns string type for a message object
    return 'eg1/Position';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd583aa47902ed0af41ba41b575a0860f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string profinet_msg
    float64 main_portal
    float64 gripper
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Position(null);
    if (msg.profinet_msg !== undefined) {
      resolved.profinet_msg = msg.profinet_msg;
    }
    else {
      resolved.profinet_msg = ''
    }

    if (msg.main_portal !== undefined) {
      resolved.main_portal = msg.main_portal;
    }
    else {
      resolved.main_portal = 0.0
    }

    if (msg.gripper !== undefined) {
      resolved.gripper = msg.gripper;
    }
    else {
      resolved.gripper = 0.0
    }

    return resolved;
    }
};

module.exports = Position;
