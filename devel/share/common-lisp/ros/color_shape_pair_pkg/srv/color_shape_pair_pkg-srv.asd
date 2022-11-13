
(cl:in-package :asdf)

(defsystem "color_shape_pair_pkg-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "color_event" :depends-on ("_package_color_event"))
    (:file "_package_color_event" :depends-on ("_package"))
    (:file "event" :depends-on ("_package_event"))
    (:file "_package_event" :depends-on ("_package"))
    (:file "shape_event" :depends-on ("_package_shape_event"))
    (:file "_package_shape_event" :depends-on ("_package"))
  ))