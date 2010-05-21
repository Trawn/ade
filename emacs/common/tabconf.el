;;; tabbar
(require 'tabbar)
(tabbar-mode)


;; 组内循环滚动tab
(setq tabbar-cycling-scope (quote tabs))

;; 外观设置
;; tab内凹表明选定

(custom-set-faces
 '(tabbar-default-face
   ((t (:inherit variable-pitch
        :background "gray90"
        :foreground "gray60"
        :height 0.8))))
 '(tabbar-selected-face
   ((t (:inherit tabbar-default-face
        :foreground "darkred"
        :box (:line-width 2 :color "white" :style pressed-button)))))
 '(tabbar-unselected-face
   ((t (:inherit tabbar-default-face
        :foreground "black"
        :box (:line-width 2 :color "white" :style released-button)))))
)