
(cl:in-package :asdf)

(defsystem "client_server-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "project1" :depends-on ("_package_project1"))
    (:file "_package_project1" :depends-on ("_package"))
  ))