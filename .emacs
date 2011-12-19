;;rewrite
(server-start)
;(message "%s" 'system-type)
(mapc 'load (directory-files (expand-file-name "lisp/" myconfpath) t "\\.el$"))
(mapc 'load (directory-files (expand-file-name "system/" myconfpath) t "\\.el$"))
(mapc 'load (directory-files (expand-file-name "common/" myconfpath) t "\\.el$"))
(mapc 'load (directory-files (expand-file-name "coding/" myconfpath) t "\\.el$"))


;; (if (equal system-type 'windows-nt)
;;     (progn
;; ;      (setq default-directory "~")
;; ;      (mapc 'load (directory-files (expand-file-name "lisp/" myconfpath) t "\\.el$"))
;;       (mapc 'load (directory-files (expand-file-name "system/" myconfpath) t "\\.el$"))
;;       (mapc 'load (directory-files (expand-file-name "common/" myconfpath) t "\\.el$"))
;;       (mapc 'load (directory-files (expand-file-name "coding/" myconfpath) t "\\.el$"))
;;       )
;;     ;; (progn
;;     ;;   (setq default-directory "~/hd/d/aWu/Documents/soft/home/")
;;     ;;   (mapc 'load (directory-files "./emacs/lisp/" t "\\.el$"))
;;     ;;   (mapc 'load (directory-files "./emacs/system/" t "\\.el$"))
;;     ;;   (mapc 'load (directory-files "./emacs/common/" t "\\.el$"))
;;     ;;   (mapc 'load (directory-files "./emacs/coding/" t "\\.el$"))
;;       )
;;     )

(put 'dired-find-alternate-file 'disabled nil)
