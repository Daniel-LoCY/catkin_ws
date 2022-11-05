;; Auto-generated. Do not edit!


(when (boundp 'image_msg_pkg::event)
  (if (not (find-package "IMAGE_MSG_PKG"))
    (make-package "IMAGE_MSG_PKG"))
  (shadow 'event (find-package "IMAGE_MSG_PKG")))
(unless (find-package "IMAGE_MSG_PKG::EVENT")
  (make-package "IMAGE_MSG_PKG::EVENT"))

(in-package "ROS")
;;//! \htmlinclude event.msg.html


(defclass image_msg_pkg::event
  :super ros::object
  :slots (_a ))

(defmethod image_msg_pkg::event
  (:init
   (&key
    ((:a __a) 0)
    )
   (send-super :init)
   (setq _a (round __a))
   self)
  (:a
   (&optional __a)
   (if __a (setq _a __a)) _a)
  (:serialization-length
   ()
   (+
    ;; int64 _a
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _a
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _a (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _a) (= (length (_a . bv)) 2)) ;; bignum
              (write-long (ash (elt (_a . bv) 0) 0) s)
              (write-long (ash (elt (_a . bv) 1) -1) s))
             ((and (class _a) (= (length (_a . bv)) 1)) ;; big1
              (write-long (elt (_a . bv) 0) s)
              (write-long (if (>= _a 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _a s)(write-long (if (>= _a 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _a
#+(or :alpha :irix6 :x86_64)
      (setf _a (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _a (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
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

(setf (get image_msg_pkg::event :md5sum-) "019706110004b728d56d8baaa8e32797")
(setf (get image_msg_pkg::event :datatype-) "image_msg_pkg/event")
(setf (get image_msg_pkg::event :definition-)
      "int64 a
")



(provide :image_msg_pkg/event "019706110004b728d56d8baaa8e32797")


