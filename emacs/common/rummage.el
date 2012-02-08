(setq visible-bell t) ;;关闭出错时的提示音

;;系统：   asterisk, exclamation, hand, question, ok
;;无声：   silent
;;机器喇叭：nil
(if (equal system-type 'windows-nt)
    (set-message-beep 'silent)
  )
(setq custom-file "~/.emacs-custom.el")

(setq inhibit-startup-message t) ;;关闭启动画面
(setq column-number-mode t) ;;显示列号

;;设置sentence-end可以识别中文标点。不用在fill时在句号后边插入两个空格。
(setq sentence-end "\\([。！？]\\|……\\|[.?!][]\"')}]*\\($\\|[ \t]\\)\\)[ \t\n]*")
(setq sentence-end-double-space nil)

;;可以递归的使用minibuffer

;;防止页面滚动时跳动， scroll-margin 3 可以在靠近屏幕边沿3行时就开始滚动，可以很好的看到上下文。
(setq scroll-margin 3
      scroll-conservatively 10000)


;;把缺省的 major mode 设置为 text-mode, 而不是几乎什么功能也没有的 fundamental-mode
(setq default-major-mode 'text-mode)

;;括号匹配时显示另外一边的括号，而不是烦人的跳到另一个括号
(show-paren-mode t)
(setq show-paren-style 'parentheses)

;;光标靠近鼠标指针时，让鼠标指针自动让开，别挡住视线
(mouse-avoidance-mode 'animate)

;;在标题栏显示buffer的名字，而不是 emacs@xxx.com 这样没用的提示
(setq frame-title-format "emacs->%f %I")

;;让emacs可以直接打开图片
(auto-image-file-mode)

;;语法加亮
(global-font-lock-mode t)

;;让dired可以递归的拷贝和删除目录
(setq dired-recursive-copies 'top)
(setq dired-recursive-deletes 'top)

;;当使用 M-x COMMAND 后，过 1 秒钟显示该 COMMAND 绑定的键。
(setq suggest-key-bindings 1)

;; 在 mode-line 上显示时间。
(display-time-mode t)
(setq display-time-24hr-format t)
(setq display-time-day-and-date t)
(setq display-time-use-mail-icon t)
(setq display-time-interval 10)

;; 改变 Emacs 固执的要你回答 yes 的行为。按 y 或空格键表示 yes，n 表示 no。
(fset 'yes-or-no-p 'y-or-n-p)

;;去除Menu和Tool
(setq menu-bar-mode nil)
(setq tool-bar-mode nil)

;;给出用 M-x foo-bar-COMMAND 输入命令的提示。
(icomplete-mode t)

;;打开文件和转换 buffer 的方便模式
;;(ido-mode t)

;;不自动备份
;(setq-default make-backup-files nil)
(setq make-backup-files nil)
(setq delete-old-versions t)

;;cursor 
(setq-default cursor-type 'bar)
(blink-cursor-mode 1)
;;高亮选中的部分
(setq-default transient-mark-mode t)

;; 默认的语言。
;;(set-language-environment 'Chinese-GB)

;; 键盘输入，用于输入法。
;;(set-keyboard-coding-system 'chinese-iso-8bit)

;; 终端显示的编码方式。
;;(set-terminal-coding-system 'chinese-iso-8bit)

;; 剪切板，用于和其他程序之间复制内容
(set-clipboard-coding-system 'chinese-gbk)

;;ask yes or no on exiting
(setq kill-emacs-query-functions
      (lambda ()
        (y-or-n-p "Do you really want to quit? ")))

(setq default-tab-width 4)
(setq tab-width 4)
(auto-save-mode -1)
(setq auto-save-default nil)
(delete-selection-mode 1)
(setq pc-selection-mode t)
(ansi-color-for-comint-mode-on)

(custom-set-variables
 '(mouse-wheel-mode t nil (mwheel))
 '(revert-without-query (quote (".*"))))


(defun jump-at-line-begining()
  (interactive "")
  (if (bolp) (back-to-indentation) (beginning-of-line)))
(global-set-key (kbd "C-A") 'jump-at-line-begining)

(require 'tramp)
