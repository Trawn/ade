;; Erc settings
(setq erc-auto-query 'buffer
      erc-autojoin-channels-alist '(("irc.linuxfans.org" "#linuxfire")
				    ("irc.bdwater.com" "#linuxfire")
				    ("irc.freenode.net" "#gentoo-cn"))
      ;;       erc-away-nickname "FKtPp[Away]"
      erc-current-nick-highlight-type 'nick-or-keyword
      erc-server-coding-system '(euc-cn . euc-cn)
      erc-encoding-coding-alist '(("#debian-zh" . utf-8) ("#emacs" . utf-8) ("#emacs-cn" . utf-8)
				  ("#gentoo-cn" . utf-8)
                                  ("#linuxfire" . chinese-gbk))
      erc-email-userid "aWu"
      erc-interpret-mirc-color t
      erc-modules '(autojoin button completion fill match
			     netsplit pcomplete ring stamp track
			     irccontrols truncate)
      erc-nick "aWu"
      erc-user-full-name "aWu"
      erc-paranoid t
      erc-port 6667
      erc-prompt-for-password t
      erc-server "irc.linuxfans.org")

;;(setq erc-server-coding-system '(euc-cn . euc-cn)
;;      erc-encoding-coding-alist '(("#linuxfire" . chinese-iso-8bit)))
	  
(custom-set-variables
 '(erc-join-buffer (quote buffer))
 )
;(setq erc-join-buffer ')    ;                           [19:37]
;(defcustom erc-join-buffer 'buffer 'window 'frame 'burye)
; "Determines how to display the newly created IRC buffer.
;'window; - in another window,
;'window-noselect  ; - in another window, but don't select that one,
;'frame; - in another frame,
;p'burye; - bury it in a new buffer,
;any other value - in place of the current buffer."
;...)                                                              [19:38]
;)
