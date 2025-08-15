// Auto-generated. Do not edit!

// (in-package plumbing_apis.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class Msg01 {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.IntMsg01 = null;
    }
    else {
      if (initObj.hasOwnProperty('IntMsg01')) {
        this.IntMsg01 = initObj.IntMsg01
      }
      else {
        this.IntMsg01 = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Msg01
    // Serialize message field [IntMsg01]
    bufferOffset = _serializer.int32(obj.IntMsg01, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Msg01
    let len;
    let data = new Msg01(null);
    // Deserialize message field [IntMsg01]
    data.IntMsg01 = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'plumbing_apis/Msg01';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ea9a3e4be6d6b607a1aa1fd01d384964';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 IntMsg01
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Msg01(null);
    if (msg.IntMsg01 !== undefined) {
      resolved.IntMsg01 = msg.IntMsg01;
    }
    else {
      resolved.IntMsg01 = 0
    }

    return resolved;
    }
};

module.exports = Msg01;
