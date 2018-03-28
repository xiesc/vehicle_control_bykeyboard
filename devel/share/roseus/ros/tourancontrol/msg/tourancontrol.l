;; Auto-generated. Do not edit!


(when (boundp 'tourancontrol::tourancontrol)
  (if (not (find-package "TOURANCONTROL"))
    (make-package "TOURANCONTROL"))
  (shadow 'tourancontrol (find-package "TOURANCONTROL")))
(unless (find-package "TOURANCONTROL::TOURANCONTROL")
  (make-package "TOURANCONTROL::TOURANCONTROL"))

(in-package "ROS")
;;//! \htmlinclude tourancontrol.msg.html


(defclass tourancontrol::tourancontrol
  :super ros::object
  :slots (_acceleration _angular ))

(defmethod tourancontrol::tourancontrol
  (:init
   (&key
    ((:acceleration __acceleration) 0.0)
    ((:angular __angular) 0.0)
    )
   (send-super :init)
   (setq _acceleration (float __acceleration))
   (setq _angular (float __angular))
   self)
  (:acceleration
   (&optional __acceleration)
   (if __acceleration (setq _acceleration __acceleration)) _acceleration)
  (:angular
   (&optional __angular)
   (if __angular (setq _angular __angular)) _angular)
  (:serialization-length
   ()
   (+
    ;; float32 _acceleration
    4
    ;; float32 _angular
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _acceleration
       (sys::poke _acceleration (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _angular
       (sys::poke _angular (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _acceleration
     (setq _acceleration (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _angular
     (setq _angular (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get tourancontrol::tourancontrol :md5sum-) "3729754d76c9e6eced875888c7d60e93")
(setf (get tourancontrol::tourancontrol :datatype-) "tourancontrol/tourancontrol")
(setf (get tourancontrol::tourancontrol :definition-)
      "float32 acceleration
float32 angular

")



(provide :tourancontrol/tourancontrol "3729754d76c9e6eced875888c7d60e93")


