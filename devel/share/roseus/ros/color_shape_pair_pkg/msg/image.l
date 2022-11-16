;; Auto-generated. Do not edit!


(when (boundp 'color_shape_pair_pkg::image)
  (if (not (find-package "COLOR_SHAPE_PAIR_PKG"))
    (make-package "COLOR_SHAPE_PAIR_PKG"))
  (shadow 'image (find-package "COLOR_SHAPE_PAIR_PKG")))
(unless (find-package "COLOR_SHAPE_PAIR_PKG::IMAGE")
  (make-package "COLOR_SHAPE_PAIR_PKG::IMAGE"))

(in-package "ROS")
;;//! \htmlinclude image.msg.html
(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))


(defclass color_shape_pair_pkg::image
  :super ros::object
  :slots (_a _r _g _b _frame_count _shape _user_shape _shapex _shapey ))

(defmethod color_shape_pair_pkg::image
  (:init
   (&key
    ((:a __a) (instance sensor_msgs::Image :init))
    ((:r __r) 0)
    ((:g __g) 0)
    ((:b __b) 0)
    ((:frame_count __frame_count) 0)
    ((:shape __shape) 0)
    ((:user_shape __user_shape) 0)
    ((:shapex __shapex) (make-array 0 :initial-element 0 :element-type :integer))
    ((:shapey __shapey) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _a __a)
   (setq _r (round __r))
   (setq _g (round __g))
   (setq _b (round __b))
   (setq _frame_count (round __frame_count))
   (setq _shape (round __shape))
   (setq _user_shape (round __user_shape))
   (setq _shapex __shapex)
   (setq _shapey __shapey)
   self)
  (:a
   (&rest __a)
   (if (keywordp (car __a))
       (send* _a __a)
     (progn
       (if __a (setq _a (car __a)))
       _a)))
  (:r
   (&optional __r)
   (if __r (setq _r __r)) _r)
  (:g
   (&optional __g)
   (if __g (setq _g __g)) _g)
  (:b
   (&optional __b)
   (if __b (setq _b __b)) _b)
  (:frame_count
   (&optional __frame_count)
   (if __frame_count (setq _frame_count __frame_count)) _frame_count)
  (:shape
   (&optional __shape)
   (if __shape (setq _shape __shape)) _shape)
  (:user_shape
   (&optional __user_shape)
   (if __user_shape (setq _user_shape __user_shape)) _user_shape)
  (:shapex
   (&optional __shapex)
   (if __shapex (setq _shapex __shapex)) _shapex)
  (:shapey
   (&optional __shapey)
   (if __shapey (setq _shapey __shapey)) _shapey)
  (:serialization-length
   ()
   (+
    ;; sensor_msgs/Image _a
    (send _a :serialization-length)
    ;; int64 _r
    8
    ;; int64 _g
    8
    ;; int64 _b
    8
    ;; int64 _frame_count
    8
    ;; int64 _shape
    8
    ;; int64 _user_shape
    8
    ;; int64[] _shapex
    (* 8    (length _shapex)) 4
    ;; int64[] _shapey
    (* 8    (length _shapey)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; sensor_msgs/Image _a
       (send _a :serialize s)
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
     ;; int64 _frame_count
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _frame_count (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _frame_count) (= (length (_frame_count . bv)) 2)) ;; bignum
              (write-long (ash (elt (_frame_count . bv) 0) 0) s)
              (write-long (ash (elt (_frame_count . bv) 1) -1) s))
             ((and (class _frame_count) (= (length (_frame_count . bv)) 1)) ;; big1
              (write-long (elt (_frame_count . bv) 0) s)
              (write-long (if (>= _frame_count 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _frame_count s)(write-long (if (>= _frame_count 0) 0 #xffffffff) s)))
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
     ;; int64 _user_shape
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _user_shape (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _user_shape) (= (length (_user_shape . bv)) 2)) ;; bignum
              (write-long (ash (elt (_user_shape . bv) 0) 0) s)
              (write-long (ash (elt (_user_shape . bv) 1) -1) s))
             ((and (class _user_shape) (= (length (_user_shape . bv)) 1)) ;; big1
              (write-long (elt (_user_shape . bv) 0) s)
              (write-long (if (>= _user_shape 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _user_shape s)(write-long (if (>= _user_shape 0) 0 #xffffffff) s)))
     ;; int64[] _shapex
     (write-long (length _shapex) s)
     (dotimes (i (length _shapex))
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke (elt _shapex i) (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class (elt _shapex i)) (= (length ((elt _shapex i) . bv)) 2)) ;; bignum
              (write-long (ash (elt ((elt _shapex i) . bv) 0) 0) s)
              (write-long (ash (elt ((elt _shapex i) . bv) 1) -1) s))
             ((and (class (elt _shapex i)) (= (length ((elt _shapex i) . bv)) 1)) ;; big1
              (write-long (elt ((elt _shapex i) . bv) 0) s)
              (write-long (if (>= (elt _shapex i) 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long (elt _shapex i) s)(write-long (if (>= (elt _shapex i) 0) 0 #xffffffff) s)))
       )
     ;; int64[] _shapey
     (write-long (length _shapey) s)
     (dotimes (i (length _shapey))
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke (elt _shapey i) (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class (elt _shapey i)) (= (length ((elt _shapey i) . bv)) 2)) ;; bignum
              (write-long (ash (elt ((elt _shapey i) . bv) 0) 0) s)
              (write-long (ash (elt ((elt _shapey i) . bv) 1) -1) s))
             ((and (class (elt _shapey i)) (= (length ((elt _shapey i) . bv)) 1)) ;; big1
              (write-long (elt ((elt _shapey i) . bv) 0) s)
              (write-long (if (>= (elt _shapey i) 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long (elt _shapey i) s)(write-long (if (>= (elt _shapey i) 0) 0 #xffffffff) s)))
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; sensor_msgs/Image _a
     (send _a :deserialize buf ptr-) (incf ptr- (send _a :serialization-length))
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
   ;; int64 _frame_count
#+(or :alpha :irix6 :x86_64)
      (setf _frame_count (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _frame_count (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
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
   ;; int64 _user_shape
#+(or :alpha :irix6 :x86_64)
      (setf _user_shape (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _user_shape (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64[] _shapex
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _shapex (instantiate integer-vector n))
     (dotimes (i n)
#+(or :alpha :irix6 :x86_64)
      (setf (elt _shapex i) (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf (elt _shapex i) (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
     ))
   ;; int64[] _shapey
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _shapey (instantiate integer-vector n))
     (dotimes (i n)
#+(or :alpha :irix6 :x86_64)
      (setf (elt _shapey i) (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf (elt _shapey i) (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
     ))
   ;;
   self)
  )

(setf (get color_shape_pair_pkg::image :md5sum-) "bc531079c94ae62fa6f0fd46d6364056")
(setf (get color_shape_pair_pkg::image :datatype-) "color_shape_pair_pkg/image")
(setf (get color_shape_pair_pkg::image :definition-)
      "sensor_msgs/Image a
int64 r
int64 g
int64 b
int64 frame_count
int64 shape
int64 user_shape
int64[] shapex
int64[] shapey
================================================================================
MSG: sensor_msgs/Image
# This message contains an uncompressed image
# (0, 0) is at top-left corner of image
#

Header header        # Header timestamp should be acquisition time of image
                     # Header frame_id should be optical frame of camera
                     # origin of frame should be optical center of camera
                     # +x should point to the right in the image
                     # +y should point down in the image
                     # +z should point into to plane of the image
                     # If the frame_id here and the frame_id of the CameraInfo
                     # message associated with the image conflict
                     # the behavior is undefined

uint32 height         # image height, that is, number of rows
uint32 width          # image width, that is, number of columns

# The legal values for encoding are in file src/image_encodings.cpp
# If you want to standardize a new string format, join
# ros-users@lists.sourceforge.net and send an email proposing a new encoding.

string encoding       # Encoding of pixels -- channel meaning, ordering, size
                      # taken from the list of strings in include/sensor_msgs/image_encodings.h

uint8 is_bigendian    # is this data bigendian?
uint32 step           # Full row length in bytes
uint8[] data          # actual matrix data, size is (step * rows)

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

")



(provide :color_shape_pair_pkg/image "bc531079c94ae62fa6f0fd46d6364056")


