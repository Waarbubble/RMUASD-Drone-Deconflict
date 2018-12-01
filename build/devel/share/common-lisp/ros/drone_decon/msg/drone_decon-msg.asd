
(cl:in-package :asdf)

(defsystem "drone_decon-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "GPS" :depends-on ("_package_GPS"))
    (:file "_package_GPS" :depends-on ("_package"))
    (:file "RedirectDrone" :depends-on ("_package_RedirectDrone"))
    (:file "_package_RedirectDrone" :depends-on ("_package"))
    (:file "RegisterDrone" :depends-on ("_package_RegisterDrone"))
    (:file "_package_RegisterDrone" :depends-on ("_package"))
    (:file "UTMDrone" :depends-on ("_package_UTMDrone"))
    (:file "_package_UTMDrone" :depends-on ("_package"))
    (:file "UTMDroneList" :depends-on ("_package_UTMDroneList"))
    (:file "_package_UTMDroneList" :depends-on ("_package"))
  ))