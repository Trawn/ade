;;
;;the special setting under windows
;;
(if (equal system-type 'windows-nt)
    (progn
      (setq w32-enable-synthesized-fonts t)
      (set-default-font "Consolas-14")
      (set-fontset-font (frame-parameter nil 'font)
			'han '("Simsun" . "unicode-bmp"))
      (set-fontset-font (frame-parameter nil 'font)
			'cjk-misc '("Simsun" . "unicode-bmp"))
      (set-fontset-font (frame-parameter nil 'font)
			'bopomofo '("Simsun" . "unicode-bmp"))
      (set-fontset-font (frame-parameter nil 'font)
			'gb18030 '("Simsun". "unicode-bmp"))
      (create-fontset-from-fontset-spec
	(concat
	 "-microsoft-Consolas-medium-r-normal-*-14-*-*-*-*-*-fontset-comment,"
	 "chinese-gb2312:-outline-Î¢ÈíÑÅºÚ-normal-r-normal-normal-16-*-96-96-p-*-gb2312*-*,"
	 "chinese-gbk:-outline-Î¢ÈíÑÅºÚ-normal-r-normal-normal-16-*-96-96-p-*-gb2312*-*,"
	 )
       )

      (custom-set-faces
       '(font-lock-string-face ((t (:foreground "plum3"))))
       '(font-lock-variable-name-face ((t (:bold t :foreground "khaki3"))))
       '(font-lock-keyword-face ((t (:bold t :foreground "MediumBlue"))))
       '(font-lock-type-face ((t (:bold t :foreground "DodgerBlue"))))
					;for comment face
       '(font-lock-comment-face ((t (:italic t :foreground "RosyBrown3" :slant oblique :height 0.9))))
       '(font-lock-function-name-face ((t (:bold t :foreground "DarkSeaGreen2"))))
       '(mode-line ((t (:bold t :foreground "yellow" :background "MidnightBlue"))))
       )

      )
  )

;;
;;the special setting under linux
;;
(if (equal system-type 'gnu/linux)
    (progn
      (if (frame-parameter nil 'font-backend)
       	  (progn
 	    (set-default-font "Yahei Mono-14")
      	    (set-fontset-font (frame-parameter nil 'font)
      			      'han '("Yahei Mono" . "unicode-bmp"))
      	    (set-fontset-font (frame-parameter nil 'font)
      			      'symbol '("Yahei Mono" . "unicode-bmp"))
      	    (set-fontset-font (frame-parameter nil 'font)
      			      'cjk-misc '("Yahei Mono" . "unicode-bmp"))
      	    (set-fontset-font (frame-parameter nil 'font)
      			      'bopomofo '("Yahei Mono" . "unicode-bmp"))
	    )
	)
      (custom-set-faces
       '(font-lock-string-face ((t (:foreground "plum3"))))
       '(font-lock-variable-name-face ((t (:bold t :foreground "khaki3"))))
       '(font-lock-keyword-face ((t (:bold t :foreground "MediumBlue"))))
       '(font-lock-type-face ((t (:bold t :foreground "DodgerBlue"))))
					;for comment face
       '(font-lock-comment-face ((t (:italic t :foreground "RosyBrown3" :slant oblique :height 0.9))))
       '(font-lock-function-name-face ((t (:bold t :foreground "DarkSeaGreen2"))))
       '(mode-line ((t (:bold t :foreground "yellow" :background "MidnightBlue"))))
       )
      )
  )