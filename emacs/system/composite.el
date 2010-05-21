;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; 启动最大化窗口设置
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(if (equal system-type 'windows-nt)
    (progn
       (message "windows: set up maximize function ... ")
       (defun w32-restore-frame ()
	 "Restore a minimized frame"
	 (interactive)
	 (w32-send-sys-command 61728))
       (defun w32-maximize-frame ()
	 "Maximize the current frame"
	 (interactive)
	 (w32-send-sys-command 61488))
       ;;Maximum Windows Frame
;       (w32-restore-frame)
;       (w32-maximize-frame)
       (message "done...")
       )
  )