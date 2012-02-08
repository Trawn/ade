;; smart compile 是一个非常好用的 elisp。它的设置也相当简单。只要对相应的后缀
;; 定义 compile 和 run 的命令就行了。格式也列在下面。
;; smart-executable-alist 是用来在调用 smart-run 时是否需要 compile。所以
;; 脚本一般都要加入到这个列表中。除非你只用 smart-compile 运行。
(require 'smart-compile nil t)
;;   %F  absolute pathname            ( /usr/local/bin/netscape.bin )
;;   %f  file name without directory  ( netscape.bin )
;;   %n  file name without extention  ( netscape )
;;   %e  extention of file name       ( bin )
(when (featurep 'smart-compile)
  (setq smart-compile-alist
	'(("\\.c$"          . "g++ -o %n %f")
	  ("\\.[Cc]+[Pp]*$" . "g++ -o %n %f")
	  ("\\.java$"       . "javac %f")
	  ("\\.f90$"        . "f90 %f -o %n")
	  ("\\.[Ff]$"       . "f77 %f -o %n")
	  ("\\.mp$"         . "runmpost.pl %f -o ps")
	  ("\\.php$"        . "php %f")
	  ("\\.tex$"        . "latex %f")
	  ("\\.l$"          . "lex -o %n.yy.c %f")
	  ("\\.y$"          . "yacc -o %n.tab.c %f")
	  ("\\.py$"         . "python %f")
	  ("\\.sql$"        . "mysql < %f")
	  ("\\.ahk$"        . "start d:\\Programs\\AutoHotkey\\AutoHotkey %f")
	  ("\\.sh$"         . "./%f")
	  (emacs-lisp-mode  . (emacs-lisp-byte-compile))))
  (setq smart-run-alist
	'(("\\.c$"          . "./%n")
	  ("\\.[Cc]+[Pp]*$" . "./%n")
	  ("\\.java$"       . "java %n")
	  ("\\.php$"        . "php %f")
	  ("\\.m$"          . "%f")
	  ("\\.scm"         . "%f")
	  ("\\.tex$"        . "dvisvga %n.dvi")
	  ("\\.py$"         . "python %f")
	  ("\\.pl$"         . "perl \"%f\"")
	  ("\\.pm$"         . "perl \"%f\"")
	  ("\\.bat$"        . "%f")
	  ("\\.mp$"         . "mpost %f")
	  ("\\.ahk$"        . "start d:\\Programs\\AutoHotkey\\AutoHotkey %f")
	  ("\\.sh$"         . "./%f")))
  (setq smart-executable-alist
	'("%n.class"
	  "%n.exe"
	  "%n"
	  "%n.mp"
	  "%n.m"
	  "%n.php"
	  "%n.scm"
	  "%n.dvi"
	  "%n.py"
	  "%n.pl"
	  "%n.ahk"
	  "%n.pm"
	  "%n.bat"
	  "%n.sh")))

(add-to-list 'load-path (expand-file-name "coding/golang/" myconfpath))
(mapc 'load (directory-files (expand-file-name "coding/c~cpp/" myconfpath) t "\\.el$"))

(require 'go-mode)
(require 'go-mode-load)
(require 'auto-complete)
(add-to-list 'ac-dictionary-directories (expand-file-name "coding/auto-complete/ac-dict/" myconfpath))
(require 'auto-complete-config)
(ac-config-default)
(setq global-auto-complete-mode t)
(setq-default auto-complete-mode t)
(require 'go-autocomplete)
(require 'fuzzy)
(require 'popup)
(append ac-modes '(makefile-mode text-mode html-mode xml-mode))
(add-to-list 'ac-modes 'makefile-mode)
(add-to-list 'ac-modes 'text-mode)
(add-to-list 'ac-modes 'html-mode)
(add-to-list 'ac-modes 'xml-mode)
(add-to-list 'ac-modes 'nxml-mode)
(add-to-list 'ac-modes 'makefile-gmake-mode)
(add-to-list 'ac-modes 'lua-mode)
(setq ac-auto-show-menu 0.43)
(setq-default ac-completing t)
(define-key ac-mode-map (kbd "<C-tab>") 'auto-complete)

(ac-set-trigger-key "TAB")
(add-to-list 'ac-sources 'ac-source-abbrev)
(add-to-list 'ac-sources 'ac-source-features)
(add-to-list 'ac-sources 'ac-source-filename)
(add-to-list 'ac-sources 'ac-source-files-in-current-dir)
(add-to-list 'ac-sources 'ac-source-functions)
(add-to-list 'ac-sources 'ac-source-gtags)
(add-to-list 'ac-sources 'ac-source-imenu)
(add-to-list 'ac-sources 'ac-source-semantic)
(add-to-list 'ac-sources 'ac-source-semantic-raw)
(add-to-list 'ac-sources 'ac-source-symbols)
(add-to-list 'ac-sources 'ac-source-variables)
(add-to-list 'ac-sources 'ac-source-words-in-buffer)
(add-to-list 'ac-sources 'ac-source-words-in-same-mode-buffers)
(add-to-list 'ac-sources 'ac-source-yasnippet)

;(mapc 'load (directory-files "coding/perl/" t "\\.el$"))

(setq lazy-lock-defer-on-scrolling t)
(setq font-lock-support-mode 'jit-lock-mode)
(setq font-lock-maximum-decoration t)

(autoload 'lua-mode "lua-mode" "Lua editing mode." t)
(add-to-list 'auto-mode-alist '("\\.lua$" . lua-mode))
(add-to-list 'interpreter-mode-alist '("lua" . lua-mode))
