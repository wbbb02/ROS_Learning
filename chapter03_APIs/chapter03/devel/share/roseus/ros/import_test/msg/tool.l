;; Auto-generated. Do not edit!


(when (boundp 'import_test::tool)
  (if (not (find-package "IMPORT_TEST"))
    (make-package "IMPORT_TEST"))
  (shadow 'tool (find-package "IMPORT_TEST")))
(unless (find-package "IMPORT_TEST::TOOL")
  (make-package "IMPORT_TEST::TOOL"))

(in-package "ROS")
;;//! \htmlinclude tool.msg.html


(defclass import_test::tool
  :super ros::object
  :slots (_IntMsg01 ))

(defmethod import_test::tool
  (:init
   (&key
    ((:IntMsg01 __IntMsg01) 0)
    )
   (send-super :init)
   (setq _IntMsg01 (round __IntMsg01))
   self)
  (:IntMsg01
   (&optional __IntMsg01)
   (if __IntMsg01 (setq _IntMsg01 __IntMsg01)) _IntMsg01)
  (:serialization-length
   ()
   (+
    ;; int32 _IntMsg01
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _IntMsg01
       (write-long _IntMsg01 s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _IntMsg01
     (setq _IntMsg01 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get import_test::tool :md5sum-) "ea9a3e4be6d6b607a1aa1fd01d384964")
(setf (get import_test::tool :datatype-) "import_test/tool")
(setf (get import_test::tool :definition-)
      "int32 IntMsg01
")



(provide :import_test/tool "ea9a3e4be6d6b607a1aa1fd01d384964")


