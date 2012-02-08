(setq visible-bell t) ;;�رճ���ʱ����ʾ��

;;ϵͳ��   asterisk, exclamation, hand, question, ok
;;������   silent
;;�������ȣ�nil
(if (equal system-type 'windows-nt)
    (set-message-beep 'silent)
  )
(setq custom-file "~/.emacs-custom.el")

(setq inhibit-startup-message t) ;;�ر���������
(setq column-number-mode t) ;;��ʾ�к�

;;����sentence-end����ʶ�����ı�㡣������fillʱ�ھ�ź�߲��������ո�
(setq sentence-end "\\([������]\\|����\\|[.?!][]\"')}]*\\($\\|[ \t]\\)\\)[ \t\n]*")
(setq sentence-end-double-space nil)

;;���Եݹ��ʹ��minibuffer

;;��ֹҳ�����ʱ������ scroll-margin 3 �����ڿ�����Ļ����3��ʱ�Ϳ�ʼ���������ԺܺõĿ��������ġ�
(setq scroll-margin 3
      scroll-conservatively 10000)


;;��ȱʡ�� major mode ����Ϊ text-mode, �����Ǽ���ʲô����Ҳû�е� fundamental-mode
(setq default-major-mode 'text-mode)

;;����ƥ��ʱ��ʾ����һ�ߵ����ţ������Ƿ��˵�������һ������
(show-paren-mode t)
(setq show-paren-style 'parentheses)

;;��꿿�����ָ��ʱ�������ָ���Զ��ÿ�����ס����
(mouse-avoidance-mode 'animate)

;;�ڱ�������ʾbuffer�����֣������� emacs@xxx.com ����û�õ���ʾ
(setq frame-title-format "emacs->%f %I")

;;��emacs����ֱ�Ӵ�ͼƬ
(auto-image-file-mode)

;;�﷨����
(global-font-lock-mode t)

;;��dired���Եݹ�Ŀ�����ɾ��Ŀ¼
(setq dired-recursive-copies 'top)
(setq dired-recursive-deletes 'top)

;;��ʹ�� M-x COMMAND �󣬹� 1 ������ʾ�� COMMAND �󶨵ļ���
(setq suggest-key-bindings 1)

;; �� mode-line ����ʾʱ�䡣
(display-time-mode t)
(setq display-time-24hr-format t)
(setq display-time-day-and-date t)
(setq display-time-use-mail-icon t)
(setq display-time-interval 10)

;; �ı� Emacs ��ִ��Ҫ��ش� yes ����Ϊ���� y ��ո����ʾ yes��n ��ʾ no��
(fset 'yes-or-no-p 'y-or-n-p)

;;ȥ��Menu��Tool
(setq menu-bar-mode nil)
(setq tool-bar-mode nil)

;;������ M-x foo-bar-COMMAND �����������ʾ��
(icomplete-mode t)

;;���ļ���ת�� buffer �ķ���ģʽ
;;(ido-mode t)

;;���Զ�����
;(setq-default make-backup-files nil)
(setq make-backup-files nil)
(setq delete-old-versions t)

;;cursor 
(setq-default cursor-type 'bar)
(blink-cursor-mode 1)
;;����ѡ�еĲ���
(setq-default transient-mark-mode t)

;; Ĭ�ϵ����ԡ�
;;(set-language-environment 'Chinese-GB)

;; �������룬�������뷨��
;;(set-keyboard-coding-system 'chinese-iso-8bit)

;; �ն���ʾ�ı��뷽ʽ��
;;(set-terminal-coding-system 'chinese-iso-8bit)

;; ���а壬���ں���������֮�临������
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
