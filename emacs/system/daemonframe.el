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
	    );;end if window-system
	  )

	(defun axe-before-make-frame ()
	  (setq window-system-default-frame-alist
		'(
		  (x
		   (font . "Yahei Mono-13")
		   (background-color . "#000022")
		   (foreground-color . "#AAFF99")
		   (cursor-color     . "#EEDD20")
		   (mouse-color      . "#EEDD20")
		   (width . 90)
		   (height . 21)
		   )
		  (nil
		   (tty-color-mode . 32)
		   (background-mode . "dark")
		   )
		  )
		)
	  );;end of axe-before-make-frame
	
	(add-hook 'before-make-frame-hook 'axe-before-make-frame)
	(add-hook 'after-make-frame-functions 'frame-setting)

	);; end of progn
      );;end of progn
  );;end of if daemonp
