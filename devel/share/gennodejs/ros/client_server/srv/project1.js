// Auto-generated. Do not edit!

// (in-package client_server.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class project1Request {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.temp = null;
      this.hum = null;
      this.pre = null;
    }
    else {
      if (initObj.hasOwnProperty('temp')) {
        this.temp = initObj.temp
      }
      else {
        this.temp = 0;
      }
      if (initObj.hasOwnProperty('hum')) {
        this.hum = initObj.hum
      }
      else {
        this.hum = 0;
      }
      if (initObj.hasOwnProperty('pre')) {
        this.pre = initObj.pre
      }
      else {
        this.pre = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type project1Request
    // Serialize message field [temp]
    bufferOffset = _serializer.int32(obj.temp, buffer, bufferOffset);
    // Serialize message field [hum]
    bufferOffset = _serializer.int32(obj.hum, buffer, bufferOffset);
    // Serialize message field [pre]
    bufferOffset = _serializer.int32(obj.pre, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type project1Request
    let len;
    let data = new project1Request(null);
    // Deserialize message field [temp]
    data.temp = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [hum]
    data.hum = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [pre]
    data.pre = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 12;
  }

  static datatype() {
    // Returns string type for a service object
    return 'client_server/project1Request';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b0ce2e252884b3c190fc892c0225083d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 temp
    int32 hum
    int32 pre
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new project1Request(null);
    if (msg.temp !== undefined) {
      resolved.temp = msg.temp;
    }
    else {
      resolved.temp = 0
    }

    if (msg.hum !== undefined) {
      resolved.hum = msg.hum;
    }
    else {
      resolved.hum = 0
    }

    if (msg.pre !== undefined) {
      resolved.pre = msg.pre;
    }
    else {
      resolved.pre = 0
    }

    return resolved;
    }
};

class project1Response {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.check_data = null;
      this.temp_range = null;
      this.hum_range = null;
      this.pre_range = null;
    }
    else {
      if (initObj.hasOwnProperty('check_data')) {
        this.check_data = initObj.check_data
      }
      else {
        this.check_data = '';
      }
      if (initObj.hasOwnProperty('temp_range')) {
        this.temp_range = initObj.temp_range
      }
      else {
        this.temp_range = '';
      }
      if (initObj.hasOwnProperty('hum_range')) {
        this.hum_range = initObj.hum_range
      }
      else {
        this.hum_range = '';
      }
      if (initObj.hasOwnProperty('pre_range')) {
        this.pre_range = initObj.pre_range
      }
      else {
        this.pre_range = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type project1Response
    // Serialize message field [check_data]
    bufferOffset = _serializer.string(obj.check_data, buffer, bufferOffset);
    // Serialize message field [temp_range]
    bufferOffset = _serializer.string(obj.temp_range, buffer, bufferOffset);
    // Serialize message field [hum_range]
    bufferOffset = _serializer.string(obj.hum_range, buffer, bufferOffset);
    // Serialize message field [pre_range]
    bufferOffset = _serializer.string(obj.pre_range, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type project1Response
    let len;
    let data = new project1Response(null);
    // Deserialize message field [check_data]
    data.check_data = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [temp_range]
    data.temp_range = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [hum_range]
    data.hum_range = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [pre_range]
    data.pre_range = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.check_data);
    length += _getByteLength(object.temp_range);
    length += _getByteLength(object.hum_range);
    length += _getByteLength(object.pre_range);
    return length + 16;
  }

  static datatype() {
    // Returns string type for a service object
    return 'client_server/project1Response';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e030b2b793576c6ba544e6bc7508daff';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string check_data
    string temp_range
    string hum_range
    string pre_range
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new project1Response(null);
    if (msg.check_data !== undefined) {
      resolved.check_data = msg.check_data;
    }
    else {
      resolved.check_data = ''
    }

    if (msg.temp_range !== undefined) {
      resolved.temp_range = msg.temp_range;
    }
    else {
      resolved.temp_range = ''
    }

    if (msg.hum_range !== undefined) {
      resolved.hum_range = msg.hum_range;
    }
    else {
      resolved.hum_range = ''
    }

    if (msg.pre_range !== undefined) {
      resolved.pre_range = msg.pre_range;
    }
    else {
      resolved.pre_range = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: project1Request,
  Response: project1Response,
  md5sum() { return '9eb847f2c8e1ec0b49be817ba7ae5609'; },
  datatype() { return 'client_server/project1'; }
};
