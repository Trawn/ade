;;; tabbar
;;(add-to-list 'load-path (expand-file-name "lisp/" myconfpath))
(require 'tabbar)
(tabbar-mode t)


;; 组内循环滚动tab
(setq tabbar-cycling-scope (quote tabs))

;; 外观设置
;; tab内凹表明选定
