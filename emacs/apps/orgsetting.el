(require 'org)
(require 'epresent)
(add-hook 'org-mode-hook 'turn-on-font-lock)

(setq org-hide-leading-stars t)
;;话说这样可以解决中文换行的问题
(add-hook 'org-mode-hook
		  (lambda ()
			(setq truncate-lines nil)
			)
		  )

;;激话auto-complete
(add-to-list 'ac-modes 'org-mode)

(setq axe-tabbar-show nil)

(defun axe-epresent-run ()
  "run epresent"
  (interactive)
  (if (not (equal tabbar-mode nil))
	  (progn
		(setq axe-tabbar-show t)
		(tabbar-mode 0)
		)
	)
  (epresent-run)
  )

(defun axe-epresent-quit ()
  "stop the present"
  (interactive)
  (if (equal axe-tabbar-show t)
	  (progn
		(setq axe-tabbar-show nil)
		(tabbar-mode t)
		)
	)
  (epresent-quit)
  )
  
		
	

(add-hook 'org-mode-hook
		  '(lambda ()
			 (define-key org-mode-map (kbd "C-c r") 'axe-epresent-run)
			 (define-key org-mode-map (kbd "C-c a") 'show-all)
			 (define-key org-mode-map (kbd "C-c h") 'hide-sublevels)
			 (define-key org-mode-map (kbd "C-C x") 'org-export-as-html)
			 (define-key org-mode-map (kbd "C-C t") 'org-export-as-html-and-open)
			 (define-key org-mode-map (kbd "C-C f") 'org-export-as-pdf)
			 (define-key org-mode-map (kbd "C-C d") 'org-export-as-pdf-and-open)
			 )
		  )
(add-hook 'epresent-mode-hook
		  '(lambda ()
			 (define-key org-mode-map (kbd "C-q") 'axe-epresent-quit)
			 )
		  )

