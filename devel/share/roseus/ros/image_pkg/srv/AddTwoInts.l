;; Auto-generated. Do not edit!


(when (boundp 'image_pkg::AddTwoInts)
  (if (not (find-package "IMAGE_PKG"))
    (make-package "IMAGE_PKG"))
  (shadow 'AddTwoInts (find-package "IMAGE_PKG")))
(unless (find-package "IMAGE_PKG::ADDTWOINTS")
  (make-package "IMAGE_PKG::ADDTWOINTS"))
(unless (find-package "IMAGE_PKG::ADDTWOINTSREQUEST")
  (make-package "IMAGE_PKG::ADDTWOINTSREQUEST"))
(unless (find-package "IMAGE_PKG::ADDTWOINTSRESPONSE")
  (make-package "IMAGE_PKG::ADDTWOINTSRESPONSE"))

(in-package "ROS")





(defclass image_pkg::AddTwoIntsRequest
  :super ros::object
  :slots (_a ))

(defmethod image_pkg::AddTwoIntsRequest
  (:init
   (&key
    ((:a __a) "")
    )
   (send-super :init)
   (setq _a (string __a))
   self)
  (:a
   (&optional __a)
   (if __a (setq _a __a)) _a)
  (:serialization-length
   ()
   (+
    ;; string _a
    4 (length _a)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _a
       (write-long (length _a) s) (princ _a s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _a
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _a (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass image_pkg::AddTwoIntsResponse
  :super ros::object
  :slots (_b ))

(defmethod image_pkg::AddTwoIntsResponse
  (:init
   (&key
    ((:b __b) "")
    )
   (send-super :init)
   (setq _b (string __b))
   self)
  (:b
   (&optional __b)
   (if __b (setq _b __b)) _b)
  (:serialization-length
   ()
   (+
    ;; string _b
    4 (length _b)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _b
       (write-long (length _b) s) (princ _b s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _b
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _b (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass image_pkg::AddTwoInts
  :super ros::object
  :slots ())

(setf (get image_pkg::AddTwoInts :md5sum-) "945e963769938e4ddc3288e80fdfddf4")
(setf (get image_pkg::AddTwoInts :datatype-) "image_pkg/AddTwoInts")
(setf (get image_pkg::AddTwoInts :request) image_pkg::AddTwoIntsRequest)
(setf (get image_pkg::AddTwoInts :response) image_pkg::AddTwoIntsResponse)

(defmethod image_pkg::AddTwoIntsRequest
  (:response () (instance image_pkg::AddTwoIntsResponse :init)))

(setf (get image_pkg::AddTwoIntsRequest :md5sum-) "945e963769938e4ddc3288e80fdfddf4")
(setf (get image_pkg::AddTwoIntsRequest :datatype-) "image_pkg/AddTwoIntsRequest")
(setf (get image_pkg::AddTwoIntsRequest :definition-)
      "string a
---
string b

")

(setf (get image_pkg::AddTwoIntsResponse :md5sum-) "945e963769938e4ddc3288e80fdfddf4")
(setf (get image_pkg::AddTwoIntsResponse :datatype-) "image_pkg/AddTwoIntsResponse")
(setf (get image_pkg::AddTwoIntsResponse :definition-)
      "string a
---
string b

")



(provide :image_pkg/AddTwoInts "945e963769938e4ddc3288e80fdfddf4")


