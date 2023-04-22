; Auto-generated. Do not edit!


(cl:in-package restriction_point-srv)


;//! \htmlinclude test_srv-request.msg.html

(cl:defclass <test_srv-request> (roslisp-msg-protocol:ros-message)
  ((pub
    :reader pub
    :initarg :pub
    :type cl:integer
    :initform 0))
)

(cl:defclass test_srv-request (<test_srv-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <test_srv-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'test_srv-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name restriction_point-srv:<test_srv-request> is deprecated: use restriction_point-srv:test_srv-request instead.")))

(cl:ensure-generic-function 'pub-val :lambda-list '(m))
(cl:defmethod pub-val ((m <test_srv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader restriction_point-srv:pub-val is deprecated.  Use restriction_point-srv:pub instead.")
  (pub m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <test_srv-request>) ostream)
  "Serializes a message object of type '<test_srv-request>"
  (cl:let* ((signed (cl:slot-value msg 'pub)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <test_srv-request>) istream)
  "Deserializes a message object of type '<test_srv-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'pub) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<test_srv-request>)))
  "Returns string type for a service object of type '<test_srv-request>"
  "restriction_point/test_srvRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'test_srv-request)))
  "Returns string type for a service object of type 'test_srv-request"
  "restriction_point/test_srvRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<test_srv-request>)))
  "Returns md5sum for a message object of type '<test_srv-request>"
  "f0938cb3886eca7912c33bd64ba079ab")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'test_srv-request)))
  "Returns md5sum for a message object of type 'test_srv-request"
  "f0938cb3886eca7912c33bd64ba079ab")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<test_srv-request>)))
  "Returns full string definition for message of type '<test_srv-request>"
  (cl:format cl:nil "int64 pub~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'test_srv-request)))
  "Returns full string definition for message of type 'test_srv-request"
  (cl:format cl:nil "int64 pub~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <test_srv-request>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <test_srv-request>))
  "Converts a ROS message object to a list"
  (cl:list 'test_srv-request
    (cl:cons ':pub (pub msg))
))
;//! \htmlinclude test_srv-response.msg.html

(cl:defclass <test_srv-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass test_srv-response (<test_srv-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <test_srv-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'test_srv-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name restriction_point-srv:<test_srv-response> is deprecated: use restriction_point-srv:test_srv-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <test_srv-response>) ostream)
  "Serializes a message object of type '<test_srv-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <test_srv-response>) istream)
  "Deserializes a message object of type '<test_srv-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<test_srv-response>)))
  "Returns string type for a service object of type '<test_srv-response>"
  "restriction_point/test_srvResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'test_srv-response)))
  "Returns string type for a service object of type 'test_srv-response"
  "restriction_point/test_srvResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<test_srv-response>)))
  "Returns md5sum for a message object of type '<test_srv-response>"
  "f0938cb3886eca7912c33bd64ba079ab")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'test_srv-response)))
  "Returns md5sum for a message object of type 'test_srv-response"
  "f0938cb3886eca7912c33bd64ba079ab")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<test_srv-response>)))
  "Returns full string definition for message of type '<test_srv-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'test_srv-response)))
  "Returns full string definition for message of type 'test_srv-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <test_srv-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <test_srv-response>))
  "Converts a ROS message object to a list"
  (cl:list 'test_srv-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'test_srv)))
  'test_srv-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'test_srv)))
  'test_srv-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'test_srv)))
  "Returns string type for a service object of type '<test_srv>"
  "restriction_point/test_srv")