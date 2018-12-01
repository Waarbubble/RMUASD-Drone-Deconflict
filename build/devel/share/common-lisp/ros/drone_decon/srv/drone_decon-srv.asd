
(cl:in-package :asdf)

(defsystem "drone_decon-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "takeOffAndLandCheck" :depends-on ("_package_takeOffAndLandCheck"))
    (:file "_package_takeOffAndLandCheck" :depends-on ("_package"))
  ))