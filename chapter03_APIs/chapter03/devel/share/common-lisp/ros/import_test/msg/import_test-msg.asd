
(cl:in-package :asdf)

(defsystem "import_test-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "tool" :depends-on ("_package_tool"))
    (:file "_package_tool" :depends-on ("_package"))
  ))