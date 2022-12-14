
(cl:in-package :asdf)

(defsystem "image_msg_pkg-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :sensor_msgs-msg
)
  :components ((:file "_package")
    (:file "event" :depends-on ("_package_event"))
    (:file "_package_event" :depends-on ("_package"))
    (:file "image" :depends-on ("_package_image"))
    (:file "_package_image" :depends-on ("_package"))
  ))