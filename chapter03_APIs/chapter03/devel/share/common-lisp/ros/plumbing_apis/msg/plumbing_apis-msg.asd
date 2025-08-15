
(cl:in-package :asdf)

(defsystem "plumbing_apis-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Msg01" :depends-on ("_package_Msg01"))
    (:file "_package_Msg01" :depends-on ("_package"))
  ))