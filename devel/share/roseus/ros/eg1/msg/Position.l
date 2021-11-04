;; Auto-generated. Do not edit!


(when (boundp 'eg1::Position)
  (if (not (find-package "EG1"))
    (make-package "EG1"))
  (shadow 'Position (find-package "EG1")))
(unless (find-package "EG1::POSITION")
  (make-package "EG1::POSITION"))

(in-package "ROS")
;;//! \htmlinclude Position.msg.html


(defclass eg1::Position
  :super ros::object
  :slots (_profinet_msg _main_portal _gripper ))

(defmethod eg1::Position
  (:init
   (&key
    ((:profinet_msg __profinet_msg) "")
    ((:main_portal __main_portal) 0.0)
    ((:gripper __gripper) 0.0)
    )
   (send-super :init)
   (setq _profinet_msg (string __profinet_msg))
   (setq _main_portal (float __main_portal))
   (setq _gripper (float __gripper))
   self)
  (:profinet_msg
   (&optional __profinet_msg)
   (if __profinet_msg (setq _profinet_msg __profinet_msg)) _profinet_msg)
  (:main_portal
   (&optional __main_portal)
   (if __main_portal (setq _main_portal __main_portal)) _main_portal)
  (:gripper
   (&optional __gripper)
   (if __gripper (setq _gripper __gripper)) _gripper)
  (:serialization-length
   ()
   (+
    ;; string _profinet_msg
    4 (length _profinet_msg)
    ;; float64 _main_portal
    8
    ;; float64 _gripper
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _profinet_msg
       (write-long (length _profinet_msg) s) (princ _profinet_msg s)
     ;; float64 _main_portal
       (sys::poke _main_portal (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _gripper
       (sys::poke _gripper (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _profinet_msg
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _profinet_msg (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64 _main_portal
     (setq _main_portal (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _gripper
     (setq _gripper (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get eg1::Position :md5sum-) "d583aa47902ed0af41ba41b575a0860f")
(setf (get eg1::Position :datatype-) "eg1/Position")
(setf (get eg1::Position :definition-)
      "string profinet_msg
float64 main_portal
float64 gripper
")



(provide :eg1/Position "d583aa47902ed0af41ba41b575a0860f")


