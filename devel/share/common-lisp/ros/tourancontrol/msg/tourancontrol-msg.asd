
(cl:in-package :asdf)

(defsystem "tourancontrol-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "tourancontrol" :depends-on ("_package_tourancontrol"))
    (:file "_package_tourancontrol" :depends-on ("_package"))
  ))