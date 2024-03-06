; Auto-generated. Do not edit!


(cl:in-package client_server-srv)


;//! \htmlinclude project1-request.msg.html

(cl:defclass <project1-request> (roslisp-msg-protocol:ros-message)
  ((temp
    :reader temp
    :initarg :temp
    :type cl:integer
    :initform 0)
   (hum
    :reader hum
    :initarg :hum
    :type cl:integer
    :initform 0)
   (pre
    :reader pre
    :initarg :pre
    :type cl:integer
    :initform 0))
)

(cl:defclass project1-request (<project1-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <project1-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'project1-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name client_server-srv:<project1-request> is deprecated: use client_server-srv:project1-request instead.")))

(cl:ensure-generic-function 'temp-val :lambda-list '(m))
(cl:defmethod temp-val ((m <project1-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader client_server-srv:temp-val is deprecated.  Use client_server-srv:temp instead.")
  (temp m))

(cl:ensure-generic-function 'hum-val :lambda-list '(m))
(cl:defmethod hum-val ((m <project1-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader client_server-srv:hum-val is deprecated.  Use client_server-srv:hum instead.")
  (hum m))

(cl:ensure-generic-function 'pre-val :lambda-list '(m))
(cl:defmethod pre-val ((m <project1-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader client_server-srv:pre-val is deprecated.  Use client_server-srv:pre instead.")
  (pre m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <project1-request>) ostream)
  "Serializes a message object of type '<project1-request>"
  (cl:let* ((signed (cl:slot-value msg 'temp)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'hum)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'pre)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <project1-request>) istream)
  "Deserializes a message object of type '<project1-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'temp) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'hum) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'pre) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<project1-request>)))
  "Returns string type for a service object of type '<project1-request>"
  "client_server/project1Request")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'project1-request)))
  "Returns string type for a service object of type 'project1-request"
  "client_server/project1Request")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<project1-request>)))
  "Returns md5sum for a message object of type '<project1-request>"
  "9eb847f2c8e1ec0b49be817ba7ae5609")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'project1-request)))
  "Returns md5sum for a message object of type 'project1-request"
  "9eb847f2c8e1ec0b49be817ba7ae5609")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<project1-request>)))
  "Returns full string definition for message of type '<project1-request>"
  (cl:format cl:nil "int32 temp~%int32 hum~%int32 pre~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'project1-request)))
  "Returns full string definition for message of type 'project1-request"
  (cl:format cl:nil "int32 temp~%int32 hum~%int32 pre~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <project1-request>))
  (cl:+ 0
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <project1-request>))
  "Converts a ROS message object to a list"
  (cl:list 'project1-request
    (cl:cons ':temp (temp msg))
    (cl:cons ':hum (hum msg))
    (cl:cons ':pre (pre msg))
))
;//! \htmlinclude project1-response.msg.html

(cl:defclass <project1-response> (roslisp-msg-protocol:ros-message)
  ((check_data
    :reader check_data
    :initarg :check_data
    :type cl:string
    :initform "")
   (temp_range
    :reader temp_range
    :initarg :temp_range
    :type cl:string
    :initform "")
   (hum_range
    :reader hum_range
    :initarg :hum_range
    :type cl:string
    :initform "")
   (pre_range
    :reader pre_range
    :initarg :pre_range
    :type cl:string
    :initform ""))
)

(cl:defclass project1-response (<project1-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <project1-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'project1-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name client_server-srv:<project1-response> is deprecated: use client_server-srv:project1-response instead.")))

(cl:ensure-generic-function 'check_data-val :lambda-list '(m))
(cl:defmethod check_data-val ((m <project1-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader client_server-srv:check_data-val is deprecated.  Use client_server-srv:check_data instead.")
  (check_data m))

(cl:ensure-generic-function 'temp_range-val :lambda-list '(m))
(cl:defmethod temp_range-val ((m <project1-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader client_server-srv:temp_range-val is deprecated.  Use client_server-srv:temp_range instead.")
  (temp_range m))

(cl:ensure-generic-function 'hum_range-val :lambda-list '(m))
(cl:defmethod hum_range-val ((m <project1-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader client_server-srv:hum_range-val is deprecated.  Use client_server-srv:hum_range instead.")
  (hum_range m))

(cl:ensure-generic-function 'pre_range-val :lambda-list '(m))
(cl:defmethod pre_range-val ((m <project1-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader client_server-srv:pre_range-val is deprecated.  Use client_server-srv:pre_range instead.")
  (pre_range m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <project1-response>) ostream)
  "Serializes a message object of type '<project1-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'check_data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'check_data))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'temp_range))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'temp_range))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'hum_range))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'hum_range))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'pre_range))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'pre_range))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <project1-response>) istream)
  "Deserializes a message object of type '<project1-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'check_data) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'check_data) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'temp_range) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'temp_range) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'hum_range) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'hum_range) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'pre_range) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'pre_range) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<project1-response>)))
  "Returns string type for a service object of type '<project1-response>"
  "client_server/project1Response")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'project1-response)))
  "Returns string type for a service object of type 'project1-response"
  "client_server/project1Response")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<project1-response>)))
  "Returns md5sum for a message object of type '<project1-response>"
  "9eb847f2c8e1ec0b49be817ba7ae5609")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'project1-response)))
  "Returns md5sum for a message object of type 'project1-response"
  "9eb847f2c8e1ec0b49be817ba7ae5609")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<project1-response>)))
  "Returns full string definition for message of type '<project1-response>"
  (cl:format cl:nil "string check_data~%string temp_range~%string hum_range~%string pre_range~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'project1-response)))
  "Returns full string definition for message of type 'project1-response"
  (cl:format cl:nil "string check_data~%string temp_range~%string hum_range~%string pre_range~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <project1-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'check_data))
     4 (cl:length (cl:slot-value msg 'temp_range))
     4 (cl:length (cl:slot-value msg 'hum_range))
     4 (cl:length (cl:slot-value msg 'pre_range))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <project1-response>))
  "Converts a ROS message object to a list"
  (cl:list 'project1-response
    (cl:cons ':check_data (check_data msg))
    (cl:cons ':temp_range (temp_range msg))
    (cl:cons ':hum_range (hum_range msg))
    (cl:cons ':pre_range (pre_range msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'project1)))
  'project1-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'project1)))
  'project1-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'project1)))
  "Returns string type for a service object of type '<project1>"
  "client_server/project1")