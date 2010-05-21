(add-hook 'dired-load-hook
          (lambda ()
            (load "dired-x")
            ))
(add-hook 'dired-mode-hook
          (lambda ()
            ))
