;;EMACS��ɫ����,�˵�Tools->Color Theme ѡ������Ҫ����ɫ 
;;(require 'color-theme)
;;(color-theme-gtk-ide)

;;(if (equal system-type 'windows-nt)
(if (and (window-system)(equal system-type 'windows-nt))
    (setq default-frame-alist
          '(
            (background-color . "#000022")
            (foreground-color . "#AAFF99")
            (cursor-color     . "#EEDD20")
            (mouse-color      . "#EEDD20")
            )
          )
  )
;;����������һЩ��ɫ
;;(setq calendar-load-hook
;;'(lambda ()
;;(set-face-foreground 'diary-face "skyblue")
;;(set-face-background 'holiday-face "slate blue")
;;(set-face-foreground 'holiday-face "white")))
