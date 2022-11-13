;; Auto-generated. Do not edit!


(when (boundp 'color_shape_pair_pkg::shape)
  (if (not (find-package "COLOR_SHAPE_PAIR_PKG"))
    (make-package "COLOR_SHAPE_PAIR_PKG"))
  (shadow 'shape (find-package "COLOR_SHAPE_PAIR_PKG")))
(unless (find-package "COLOR_SHAPE_PAIR_PKG::SHAPE")
  (make-package "COLOR_SHAPE_PAIR_PKG::SHAPE"))

(in-package "ROS")
;;//! \htmlinclude shape.msg.html


(defclass color_shape_pair_pkg::shape
  :super ros::object
  :slots (_shape ))

(defmethod color_shape_pair_pkg::shape
  (:init
   (&key
    ((:shape __shape) "")
    )
   (send-super :init)
   (setq _shape (string __shape))
   self)
  (:shape
   (&optional __shape)
   (if __shape (setq _shape __shape)) _shape)
  (:serialization-length
   ()
   (+
    ;; string _shape
    4 (length _shape)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _shape
       (write-long (length _shape) s) (princ _shape s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _shape
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _shape (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get color_shape_pair_pkg::shape :md5sum-) "fa50c30980f0f012451f487eb6d76d53")
(setf (get color_shape_pair_pkg::shape :datatype-) "color_shape_pair_pkg/shape")
(setf (get color_shape_pair_pkg::shape :definition-)
      "string shape
")



(provide :color_shape_pair_pkg/shape "fa50c30980f0f012451f487eb6d76d53")


