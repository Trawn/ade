;;to check if emacs is run as daemon server mode
(if (and (fboundp 'daemonp)(daemonp))
    (progn
      (progn
	(defun frame-setting(&optional frame)
	  (tool-bar-mode -1)
	  (menu-bar-mode -1)
	  (interactive)
	  (select-frame frame)
	  (set-default-font "Yahei Mono-14")
	  (if window-system
	      (progn
		(set-fontset-font (frame-parameter nil 'font)
				  'han '("Yahei Mono" . "unicode-bmp"))
		(set-fontset-font (frame-parameter nil 'font)
				  'symbol '("Yahei Mono" . "unicode-bmp"))
		(set-fontset-font (frame-parameter nil 'font)
				  'cjk-misc '("Yahei Mono" . "unicode-bmp"))
		(set-fontset-font (frame-parameter nil 'font)
				  'bopomofo '("Yahei Mono" . "unicode-bmp"))
		);;end of progn

	    (progn
	      (tty-color-clear)
	      (tty-set-up-initial-frame-faces)
	      )
	    );;end if window-system
	  )

	(add-hook 'before-make-frame-hook
		  '(lambda()
		     (setq default-frame-alist
			   '(
			     (background-color . "#000022")
			     (foreground-color . "#AAFF99")
			     (cursor-color     . "#EEDD20")
			     (mouse-color      . "#EEDD20")
			     (width . 90)
			     (height . 21)
			     )
			   );;end of setq default-frame-alist
		     )
		  )
	(add-hook 'after-make-frame-functions 'frame-setting)

	);; end of progn
      );;end of progn
  );;end of if daemonp
