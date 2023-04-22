// Auto-generated. Do not edit!

// (in-package restriction_point.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class test_srvRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.pub = null;
    }
    else {
      if (initObj.hasOwnProperty('pub')) {
        this.pub = initObj.pub
      }
      else {
        this.pub = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type test_srvRequest
    // Serialize message field [pub]
    bufferOffset = _serializer.int64(obj.pub, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type test_srvRequest
    let len;
    let data = new test_srvRequest(null);
    // Deserialize message field [pub]
    data.pub = _deserializer.int64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'restriction_point/test_srvRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f0938cb3886eca7912c33bd64ba079ab';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int64 pub
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new test_srvRequest(null);
    if (msg.pub !== undefined) {
      resolved.pub = msg.pub;
    }
    else {
      resolved.pub = 0
    }

    return resolved;
    }
};

class test_srvResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type test_srvResponse
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type test_srvResponse
    let len;
    let data = new test_srvResponse(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'restriction_point/test_srvResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new test_srvResponse(null);
    return resolved;
    }
};

module.exports = {
  Request: test_srvRequest,
  Response: test_srvResponse,
  md5sum() { return 'f0938cb3886eca7912c33bd64ba079ab'; },
  datatype() { return 'restriction_point/test_srv'; }
};
