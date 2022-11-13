;; Auto-generated. Do not edit!


(when (boundp 'color_shape_pair_pkg::shape_event)
  (if (not (find-package "COLOR_SHAPE_PAIR_PKG"))
    (make-package "COLOR_SHAPE_PAIR_PKG"))
  (shadow 'shape_event (find-package "COLOR_SHAPE_PAIR_PKG")))
(unless (find-package "COLOR_SHAPE_PAIR_PKG::SHAPE_EVENT")
  (make-package "COLOR_SHAPE_PAIR_PKG::SHAPE_EVENT"))
(unless (find-package "COLOR_SHAPE_PAIR_PKG::SHAPE_EVENTREQUEST")
  (make-package "COLOR_SHAPE_PAIR_PKG::SHAPE_EVENTREQUEST"))
(unless (find-package "COLOR_SHAPE_PAIR_PKG::SHAPE_EVENTRESPONSE")
  (make-package "COLOR_SHAPE_PAIR_PKG::SHAPE_EVENTRESPONSE"))

(in-package "ROS")





(defclass color_shape_pair_pkg::shape_eventRequest
  :super ros::object
  :slots (_shape ))

(defmethod color_shape_pair_pkg::shape_eventRequest
  (:init
   (&key
    ((:shape __shape) 0)
    )
   (send-super :init)
   (setq _shape (round __shape))
   self)
  (:shape
   (&optional __shape)
   (if __shape (setq _shape __shape)) _shape)
  (:serialization-length
   ()
   (+
    ;; int64 _shape
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _shape
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _shape (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _shape) (= (length (_shape . bv)) 2)) ;; bignum
              (write-long (ash (elt (_shape . bv) 0) 0) s)
              (write-long (ash (elt (_shape . bv) 1) -1) s))
             ((and (class _shape) (= (length (_shape . bv)) 1)) ;; big1
              (write-long (elt (_shape . bv) 0) s)
              (write-long (if (>= _shape 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _shape s)(write-long (if (>= _shape 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _shape
#+(or :alpha :irix6 :x86_64)
      (setf _shape (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _shape (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
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

(defclass color_shape_pair_pkg::shape_eventResponse
  :super ros::object
  :slots (_s ))

(defmethod color_shape_pair_pkg::shape_eventResponse
  (:init
   (&key
    ((:s __s) "")
    )
   (send-super :init)
   (setq _s (string __s))
   self)
  (:s
   (&optional __s)
   (if __s (setq _s __s)) _s)
  (:serialization-length
   ()
   (+
    ;; string _s
    4 (length _s)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _s
       (write-long (length _s) s) (princ _s s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _s
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _s (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass color_shape_pair_pkg::shape_event
  :super ros::object
  :slots ())

(setf (get color_shape_pair_pkg::shape_event :md5sum-) "ebec1319769de8764c53bcc75605e37a")
(setf (get color_shape_pair_pkg::shape_event :datatype-) "color_shape_pair_pkg/shape_event")
(setf (get color_shape_pair_pkg::shape_event :request) color_shape_pair_pkg::shape_eventRequest)
(setf (get color_shape_pair_pkg::shape_event :response) color_shape_pair_pkg::shape_eventResponse)

(defmethod color_shape_pair_pkg::shape_eventRequest
  (:response () (instance color_shape_pair_pkg::shape_eventResponse :init)))

(setf (get color_shape_pair_pkg::shape_eventRequest :md5sum-) "ebec1319769de8764c53bcc75605e37a")
(setf (get color_shape_pair_pkg::shape_eventRequest :datatype-) "color_shape_pair_pkg/shape_eventRequest")
(setf (get color_shape_pair_pkg::shape_eventRequest :definition-)
      "int64 shape
---
string s
")

(setf (get color_shape_pair_pkg::shape_eventResponse :md5sum-) "ebec1319769de8764c53bcc75605e37a")
(setf (get color_shape_pair_pkg::shape_eventResponse :datatype-) "color_shape_pair_pkg/shape_eventResponse")
(setf (get color_shape_pair_pkg::shape_eventResponse :definition-)
      "int64 shape
---
string s
")



(provide :color_shape_pair_pkg/shape_event "ebec1319769de8764c53bcc75605e37a")


