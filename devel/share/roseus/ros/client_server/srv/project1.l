;; Auto-generated. Do not edit!


(when (boundp 'client_server::project1)
  (if (not (find-package "CLIENT_SERVER"))
    (make-package "CLIENT_SERVER"))
  (shadow 'project1 (find-package "CLIENT_SERVER")))
(unless (find-package "CLIENT_SERVER::PROJECT1")
  (make-package "CLIENT_SERVER::PROJECT1"))
(unless (find-package "CLIENT_SERVER::PROJECT1REQUEST")
  (make-package "CLIENT_SERVER::PROJECT1REQUEST"))
(unless (find-package "CLIENT_SERVER::PROJECT1RESPONSE")
  (make-package "CLIENT_SERVER::PROJECT1RESPONSE"))

(in-package "ROS")





(defclass client_server::project1Request
  :super ros::object
  :slots (_temp _hum _pre ))

(defmethod client_server::project1Request
  (:init
   (&key
    ((:temp __temp) 0)
    ((:hum __hum) 0)
    ((:pre __pre) 0)
    )
   (send-super :init)
   (setq _temp (round __temp))
   (setq _hum (round __hum))
   (setq _pre (round __pre))
   self)
  (:temp
   (&optional __temp)
   (if __temp (setq _temp __temp)) _temp)
  (:hum
   (&optional __hum)
   (if __hum (setq _hum __hum)) _hum)
  (:pre
   (&optional __pre)
   (if __pre (setq _pre __pre)) _pre)
  (:serialization-length
   ()
   (+
    ;; int32 _temp
    4
    ;; int32 _hum
    4
    ;; int32 _pre
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _temp
       (write-long _temp s)
     ;; int32 _hum
       (write-long _hum s)
     ;; int32 _pre
       (write-long _pre s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _temp
     (setq _temp (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _hum
     (setq _hum (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _pre
     (setq _pre (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass client_server::project1Response
  :super ros::object
  :slots (_check_data _temp_range _hum_range _pre_range ))

(defmethod client_server::project1Response
  (:init
   (&key
    ((:check_data __check_data) "")
    ((:temp_range __temp_range) "")
    ((:hum_range __hum_range) "")
    ((:pre_range __pre_range) "")
    )
   (send-super :init)
   (setq _check_data (string __check_data))
   (setq _temp_range (string __temp_range))
   (setq _hum_range (string __hum_range))
   (setq _pre_range (string __pre_range))
   self)
  (:check_data
   (&optional __check_data)
   (if __check_data (setq _check_data __check_data)) _check_data)
  (:temp_range
   (&optional __temp_range)
   (if __temp_range (setq _temp_range __temp_range)) _temp_range)
  (:hum_range
   (&optional __hum_range)
   (if __hum_range (setq _hum_range __hum_range)) _hum_range)
  (:pre_range
   (&optional __pre_range)
   (if __pre_range (setq _pre_range __pre_range)) _pre_range)
  (:serialization-length
   ()
   (+
    ;; string _check_data
    4 (length _check_data)
    ;; string _temp_range
    4 (length _temp_range)
    ;; string _hum_range
    4 (length _hum_range)
    ;; string _pre_range
    4 (length _pre_range)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _check_data
       (write-long (length _check_data) s) (princ _check_data s)
     ;; string _temp_range
       (write-long (length _temp_range) s) (princ _temp_range s)
     ;; string _hum_range
       (write-long (length _hum_range) s) (princ _hum_range s)
     ;; string _pre_range
       (write-long (length _pre_range) s) (princ _pre_range s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _check_data
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _check_data (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _temp_range
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _temp_range (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _hum_range
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _hum_range (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _pre_range
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _pre_range (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass client_server::project1
  :super ros::object
  :slots ())

(setf (get client_server::project1 :md5sum-) "9eb847f2c8e1ec0b49be817ba7ae5609")
(setf (get client_server::project1 :datatype-) "client_server/project1")
(setf (get client_server::project1 :request) client_server::project1Request)
(setf (get client_server::project1 :response) client_server::project1Response)

(defmethod client_server::project1Request
  (:response () (instance client_server::project1Response :init)))

(setf (get client_server::project1Request :md5sum-) "9eb847f2c8e1ec0b49be817ba7ae5609")
(setf (get client_server::project1Request :datatype-) "client_server/project1Request")
(setf (get client_server::project1Request :definition-)
      "int32 temp
int32 hum
int32 pre
---
string check_data
string temp_range
string hum_range
string pre_range
")

(setf (get client_server::project1Response :md5sum-) "9eb847f2c8e1ec0b49be817ba7ae5609")
(setf (get client_server::project1Response :datatype-) "client_server/project1Response")
(setf (get client_server::project1Response :definition-)
      "int32 temp
int32 hum
int32 pre
---
string check_data
string temp_range
string hum_range
string pre_range
")



(provide :client_server/project1 "9eb847f2c8e1ec0b49be817ba7ae5609")


