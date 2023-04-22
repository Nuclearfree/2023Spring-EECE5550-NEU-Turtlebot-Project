;; Auto-generated. Do not edit!


(when (boundp 'restriction_point::test_srv)
  (if (not (find-package "RESTRICTION_POINT"))
    (make-package "RESTRICTION_POINT"))
  (shadow 'test_srv (find-package "RESTRICTION_POINT")))
(unless (find-package "RESTRICTION_POINT::TEST_SRV")
  (make-package "RESTRICTION_POINT::TEST_SRV"))
(unless (find-package "RESTRICTION_POINT::TEST_SRVREQUEST")
  (make-package "RESTRICTION_POINT::TEST_SRVREQUEST"))
(unless (find-package "RESTRICTION_POINT::TEST_SRVRESPONSE")
  (make-package "RESTRICTION_POINT::TEST_SRVRESPONSE"))

(in-package "ROS")





(defclass restriction_point::test_srvRequest
  :super ros::object
  :slots (_pub ))

(defmethod restriction_point::test_srvRequest
  (:init
   (&key
    ((:pub __pub) 0)
    )
   (send-super :init)
   (setq _pub (round __pub))
   self)
  (:pub
   (&optional __pub)
   (if __pub (setq _pub __pub)) _pub)
  (:serialization-length
   ()
   (+
    ;; int64 _pub
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _pub
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _pub (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _pub) (= (length (_pub . bv)) 2)) ;; bignum
              (write-long (ash (elt (_pub . bv) 0) 0) s)
              (write-long (ash (elt (_pub . bv) 1) -1) s))
             ((and (class _pub) (= (length (_pub . bv)) 1)) ;; big1
              (write-long (elt (_pub . bv) 0) s)
              (write-long (if (>= _pub 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _pub s)(write-long (if (>= _pub 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _pub
#+(or :alpha :irix6 :x86_64)
      (setf _pub (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _pub (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(defclass restriction_point::test_srvResponse
  :super ros::object
  :slots ())

(defmethod restriction_point::test_srvResponse
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass restriction_point::test_srv
  :super ros::object
  :slots ())

(setf (get restriction_point::test_srv :md5sum-) "f0938cb3886eca7912c33bd64ba079ab")
(setf (get restriction_point::test_srv :datatype-) "restriction_point/test_srv")
(setf (get restriction_point::test_srv :request) restriction_point::test_srvRequest)
(setf (get restriction_point::test_srv :response) restriction_point::test_srvResponse)

(defmethod restriction_point::test_srvRequest
  (:response () (instance restriction_point::test_srvResponse :init)))

(setf (get restriction_point::test_srvRequest :md5sum-) "f0938cb3886eca7912c33bd64ba079ab")
(setf (get restriction_point::test_srvRequest :datatype-) "restriction_point/test_srvRequest")
(setf (get restriction_point::test_srvRequest :definition-)
      "int64 pub
---

")

(setf (get restriction_point::test_srvResponse :md5sum-) "f0938cb3886eca7912c33bd64ba079ab")
(setf (get restriction_point::test_srvResponse :datatype-) "restriction_point/test_srvResponse")
(setf (get restriction_point::test_srvResponse :definition-)
      "int64 pub
---

")



(provide :restriction_point/test_srv "f0938cb3886eca7912c33bd64ba079ab")


