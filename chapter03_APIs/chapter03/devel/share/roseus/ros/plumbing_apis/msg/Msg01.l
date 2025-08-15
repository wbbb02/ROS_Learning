;; Auto-generated. Do not edit!


(when (boundp 'plumbing_apis::Msg01)
  (if (not (find-package "PLUMBING_APIS"))
    (make-package "PLUMBING_APIS"))
  (shadow 'Msg01 (find-package "PLUMBING_APIS")))
(unless (find-package "PLUMBING_APIS::MSG01")
  (make-package "PLUMBING_APIS::MSG01"))

(in-package "ROS")
;;//! \htmlinclude Msg01.msg.html


(defclass plumbing_apis::Msg01
  :super ros::object
  :slots (_IntMsg01 ))

(defmethod plumbing_apis::Msg01
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

(setf (get plumbing_apis::Msg01 :md5sum-) "ea9a3e4be6d6b607a1aa1fd01d384964")
(setf (get plumbing_apis::Msg01 :datatype-) "plumbing_apis/Msg01")
(setf (get plumbing_apis::Msg01 :definition-)
      "int32 IntMsg01
")



(provide :plumbing_apis/Msg01 "ea9a3e4be6d6b607a1aa1fd01d384964")


