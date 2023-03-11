;; setting.el

;; encoding
(set-default-coding-systems 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(prefer-coding-system       'utf-8)

;; File
(use-package files
  :straight nil
  :config
  (setq make-backup-files nil
	backup-by-copying t
	backup-by-copying-when-linked t
	delete-old-versions t
	kept-new-versions 4
	kept-old-versions 2
	version-control t
	auto-save-default t
	;; Don't bother confirming stuff
	confirm-kill-process nil
	confirm-kill-emacs nil
	auto-mode-case-fold nil))

;; No bell
(setq visible-bell 1
      ring-bell-function 'ignore)

;; Vim like scrolling
(setq scroll-step 1
      scroll-conservatively 10000
      next-screen-context-lines 5
      line-move-visual nil)

;; Dired reuse buffer
(put 'dired-find-alternate-file 'disabled nil)
     
(provide 'settings)
