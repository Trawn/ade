(setq load-path (append load-path '("emacs/lisp/pymacs") '("emacs/lisp/python-mode")))
(setq auto-mode-alist (cons '("\\.py$" . python-mode) auto-mode-alist))
(setq interpreter-mode-alist (cons '("python" . python-mode)
                                   interpreter-mode-alist))
(autoload 'python-mode "python-mode" "Python editing mode." t)

;; emads pymacs used in Win32:
(require 'pymacs)

(autoload ' pymacs-load "pymacs" nil t)
(autoload ' pymacs-eval "pymacs" nil t)
(autoload ' pymacs-apply "pymacs")
(autoload ' pymacs-call "pymacs")

(eval-after-load "pymacs"
;' (add-to-list ' pymacs-load-path "lisp/pymacs"))
  ' (add-to-list ' pymacs-load-path "C:\Python25\Lib\site-packages\Pymacs"))
(require 'python-mode)
(setq auto-mode-alist
      (cons '("\\.py$" . python-mode) auto-mode-alist))
(setq interpreter-mode-alist
      (cons '("python" . python-mode)
            interpreter-mode-alist))
