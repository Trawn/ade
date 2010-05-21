;;=============================================================
;; C & C++
;;=============================================================
(require 'cc-mode)
(add-hook 'c-mode-hook 
	  '(lambda ()
	     (c-set-style "k&r")
	     (c-toggle-hungry-state)
	     (define-key c-mode-map [return] 'newline-and-indent)
	     (interactive)
	     ;; TAB键的宽度设置为4
	     (setq c-basic-offset 4)
	     ;; 在状态条上显示当前光标在哪个函数体内部
	     (which-function-mode)
	     )
	  )
(add-hook 'c++-mode-hook
	  '(lambda ()
	     (c-set-style "stroustrup")
;	     (c-toggle-auto-hungry-state)
	     (c-toggle-hungry-state)
	     (define-key c++-mode-map [return] 'newline-and-indent)
	     (define-key c++-mode-map [(control c) (c)] 'gdb)
	     (interactive)
	     ;; TAB键的宽度设置为4
	     (setq c-basic-offset 4)
	     (setq tab-width 4)
	     ;; 在状态条上显示当前光标在哪个函数体内部
	     (which-function-mode)
	     )
	  )
(add-hook 'pike-mode-hook
	  '(lambda ()
	     (c-set-style "stroustrup")
;	     (c-toggle-auto-hungry-state)
	     (c-toggle-hungry-state)
;	     (define-key c++-mode-map [return] 'newline-and-indent)
;	     (define-key c++-mode-map [(control c) (c)] 'gdb)
	     (interactive)
	     ;; TAB键的宽度设置为4
	     (setq c-basic-offset 4)
	     (setq tab-width 4)
	     ;; 在状态条上显示当前光标在哪个函数体内部
	     (which-function-mode)
	     )
	  )

(setq auto-mode-alist
      (append '(("\\.cpp$" . c++-mode)
		("\\.c$" . c++-mode)
		 ("\\.hpp$" . c++-mode)
		 ("\\.h$" . c++-mode)
		 ("\\.lsp$" . lisp-mode)
		 ("\\.scm$" . scheme-mode)
		 ("\\.pl$" . perl-mode)
		 ("\\.py$" . python-mode)
		 ("\\.php$" . php-mode)
		 ("\\.pike$". pike-mode)
		 ("\\.pi$". pike-mode)
		 ("\\.pk$". pike-mode)
		 )
	      auto-mode-alist)
      )

(message "<aWu> end of c&c++ setting")