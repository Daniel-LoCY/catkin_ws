
(cl:in-package :asdf)

(defsystem "image_pkg-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :sensor_msgs-msg
)
  :components ((:file "_package")
    (:file "AddTwoInts" :depends-on ("_package_AddTwoInts"))
    (:file "_package_AddTwoInts" :depends-on ("_package"))
    (:file "display_edge" :depends-on ("_package_display_edge"))
    (:file "_package_display_edge" :depends-on ("_package"))
    (:file "transport_image" :depends-on ("_package_transport_image"))
    (:file "_package_transport_image" :depends-on ("_package"))
  ))