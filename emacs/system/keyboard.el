;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;special keyboard setting under windows
(if (equal system-type 'windows-nt)
    (progn
      (setq w32-pass-rwindow-to-system 'nil)
      (setq w32-rwindow-modifier 'hyper)
      (setq w32-pass-lwindow-to-system 'nil)
      (setq w32-lwindow-modifier 'nil)
      (set-keyboard-coding-system 'chinese-iso-8bit)
      )
  )

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;special keyboard setting under linux
(if (equal system-type 'gnu/linux)
    (progn
      '(lambda()
	 )
      )
    )

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;general keyboard setting
(define-prefix-command 'M-c-map)
(global-set-key (kbd "M-c") 'M-c-map)
(define-prefix-command 'C-Dot-map)
(global-set-key (kbd "C-.") 'C-Dot-map)
(define-prefix-command 'lwindow-map)
(global-set-key (kbd "<lwindow>") 'lwindow-map)

(global-set-key (kbd "<RET>") 'newline-and-indent)
(global-set-key (kbd "C-j") 'newline)
;;not use default buffer list function, replace it with electric-buffer-list, or use ibuffer :)
(global-set-key "\C-x\C-b" 'electric-buffer-list)

;;close the current buffer without asking
(global-set-key "\C-xk" 'kill-this-buffer)

(global-set-key "\C-z" 'set-mark-command)
;;(global-set-key (kbd "<lwindow> q") 'goto-line)
(global-set-key (kbd "C-. g") 'goto-line)

;;compile current directory project
(global-set-key (kbd "C-. k") 'comment-region)
(global-set-key (kbd "C-. u") 'uncomment-region)
(global-set-key (kbd "C-. c") 'compile)
(global-set-key (kbd "C-. n") 'next-error)
(global-set-key (kbd "C-. m") 'previous-error)

(global-set-key (kbd "C-. d") 'delete-region)

(mapc 'load (directory-files (expand-file-name "system/kbd/" myconfpath) t "\\.el$"))