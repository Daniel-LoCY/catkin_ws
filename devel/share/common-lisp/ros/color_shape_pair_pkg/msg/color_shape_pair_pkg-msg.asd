
(cl:in-package :asdf)

(defsystem "color_shape_pair_pkg-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :sensor_msgs-msg
)
  :components ((:file "_package")
    (:file "image" :depends-on ("_package_image"))
    (:file "_package_image" :depends-on ("_package"))
    (:file "shape" :depends-on ("_package_shape"))
    (:file "_package_shape" :depends-on ("_package"))
  ))