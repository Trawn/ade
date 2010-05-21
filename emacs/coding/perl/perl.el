;;=============================================================
;; Perl
;;=============================================================
(autoload 'cperl-mode "cperl-mode" "cperl mode" t)
(defalias 'perl-mode 'cperl-mode)
(setq cperl-hairy t) ;; Turns on most of the CPerlMode options

;; this fixes the problem that most color themes have with cperl-mode.
(add-hook 'cperl-mode-hook 
	  (lambda ()
	    (set-face-background
	     cperl-array-face nil)
	    )
          )
(autoload 'perl-mode "cperl-mode" "alternate mode for editing Perl programs" t)
(add-hook 'cperl-mode-hook
          (lambda()
            (cperl-set-style "C++")
            )
          )
(custom-set-variables
 '(cperl-indent-level 4)
 '(cperl-continued-statement-offset 4)
 '(cperl-tab-always-indent t)
 '(indent-tabs-mode t)
 '(cperl-singly-quote-face t)
 )


(setq cperl-electric-keywords t)
(setq cperl-invalid-face nil)
(setq cperl-indent-parens-as-block t)
(setq cperl-close-paren-offset -4)
(setq cperl-auto-newline t)
(setq cperl-font-lock t)
(setq cperl-autoindent-on-semi t)
