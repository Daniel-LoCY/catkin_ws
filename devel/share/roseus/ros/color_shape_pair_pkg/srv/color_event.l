;; Auto-generated. Do not edit!


(when (boundp 'color_shape_pair_pkg::color_event)
  (if (not (find-package "COLOR_SHAPE_PAIR_PKG"))
    (make-package "COLOR_SHAPE_PAIR_PKG"))
  (shadow 'color_event (find-package "COLOR_SHAPE_PAIR_PKG")))
(unless (find-package "COLOR_SHAPE_PAIR_PKG::COLOR_EVENT")
  (make-package "COLOR_SHAPE_PAIR_PKG::COLOR_EVENT"))
(unless (find-package "COLOR_SHAPE_PAIR_PKG::COLOR_EVENTREQUEST")
  (make-package "COLOR_SHAPE_PAIR_PKG::COLOR_EVENTREQUEST"))
(unless (find-package "COLOR_SHAPE_PAIR_PKG::COLOR_EVENTRESPONSE")
  (make-package "COLOR_SHAPE_PAIR_PKG::COLOR_EVENTRESPONSE"))

(in-package "ROS")





(defclass color_shape_pair_pkg::color_eventRequest
  :super ros::object
  :slots (_b _g _r ))

(defmethod color_shape_pair_pkg::color_eventRequest
  (:init
   (&key
    ((:b __b) 0)
    ((:g __g) 0)
    ((:r __r) 0)
    )
   (send-super :init)
   (setq _b (round __b))
   (setq _g (round __g))
   (setq _r (round __r))
   self)
  (:b
   (&optional __b)
   (if __b (setq _b __b)) _b)
  (:g
   (&optional __g)
   (if __g (setq _g __g)) _g)
  (:r
   (&optional __r)
   (if __r (setq _r __r)) _r)
  (:serialization-length
   ()
   (+
    ;; int64 _b
    8
    ;; int64 _g
    8
    ;; int64 _r
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _b
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _b (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _b) (= (length (_b . bv)) 2)) ;; bignum
              (write-long (ash (elt (_b . bv) 0) 0) s)
              (write-long (ash (elt (_b . bv) 1) -1) s))
             ((and (class _b) (= (length (_b . bv)) 1)) ;; big1
              (write-long (elt (_b . bv) 0) s)
              (write-long (if (>= _b 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _b s)(write-long (if (>= _b 0) 0 #xffffffff) s)))
     ;; int64 _g
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _g (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _g) (= (length (_g . bv)) 2)) ;; bignum
              (write-long (ash (elt (_g . bv) 0) 0) s)
              (write-long (ash (elt (_g . bv) 1) -1) s))
             ((and (class _g) (= (length (_g . bv)) 1)) ;; big1
              (write-long (elt (_g . bv) 0) s)
              (write-long (if (>= _g 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _g s)(write-long (if (>= _g 0) 0 #xffffffff) s)))
     ;; int64 _r
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _r (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _r) (= (length (_r . bv)) 2)) ;; bignum
              (write-long (ash (elt (_r . bv) 0) 0) s)
              (write-long (ash (elt (_r . bv) 1) -1) s))
             ((and (class _r) (= (length (_r . bv)) 1)) ;; big1
              (write-long (elt (_r . bv) 0) s)
              (write-long (if (>= _r 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _r s)(write-long (if (>= _r 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _b
#+(or :alpha :irix6 :x86_64)
      (setf _b (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _b (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _g
#+(or :alpha :irix6 :x86_64)
      (setf _g (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _g (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _r
#+(or :alpha :irix6 :x86_64)
      (setf _r (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _r (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
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

(defclass color_shape_pair_pkg::color_eventResponse
  :super ros::object
  :slots (_s ))

(defmethod color_shape_pair_pkg::color_eventResponse
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

(defclass color_shape_pair_pkg::color_event
  :super ros::object
  :slots ())

(setf (get color_shape_pair_pkg::color_event :md5sum-) "6e158a8fb52b65fbc6ac817be43be292")
(setf (get color_shape_pair_pkg::color_event :datatype-) "color_shape_pair_pkg/color_event")
(setf (get color_shape_pair_pkg::color_event :request) color_shape_pair_pkg::color_eventRequest)
(setf (get color_shape_pair_pkg::color_event :response) color_shape_pair_pkg::color_eventResponse)

(defmethod color_shape_pair_pkg::color_eventRequest
  (:response () (instance color_shape_pair_pkg::color_eventResponse :init)))

(setf (get color_shape_pair_pkg::color_eventRequest :md5sum-) "6e158a8fb52b65fbc6ac817be43be292")
(setf (get color_shape_pair_pkg::color_eventRequest :datatype-) "color_shape_pair_pkg/color_eventRequest")
(setf (get color_shape_pair_pkg::color_eventRequest :definition-)
      "int64 b
int64 g
int64 r
---
string s
")

(setf (get color_shape_pair_pkg::color_eventResponse :md5sum-) "6e158a8fb52b65fbc6ac817be43be292")
(setf (get color_shape_pair_pkg::color_eventResponse :datatype-) "color_shape_pair_pkg/color_eventResponse")
(setf (get color_shape_pair_pkg::color_eventResponse :definition-)
      "int64 b
int64 g
int64 r
---
string s
")



(provide :color_shape_pair_pkg/color_event "6e158a8fb52b65fbc6ac817be43be292")


