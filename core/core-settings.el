;;; core-settings.el -*- lexical-binding: t; -*-

;; Defauld encoding
(set-default-coding-systems 'utf-8)
(prefer-coding-system       'utf-8)
(set-default-coding-systems 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(set-language-environment "English")

;; Recovery
(setq auto-savelist-file-prefix ; Prefix for generating auto-save-list-file-name
      (expand-file-name ".auto-save-list/.save-" user-emacs-directory)
      auto-save-default t       ; Auto-save every buffer that visits a file
      auto-save-timeout 20      ; Number of seconds between auto-save
      auto-save-interval 200)   ; Number of keystrokes between auto-saves

;; Backups
(setq backup-directory-alist       ; File name patterns of backup directory names
      `(("." . ,(expand-file-name "backups" user-emacs-directory)))
      make-backup-file t           ; Backup of file the first time it is saved
      vc-make-backup-files nil     ; No backup of files under vc
      backup-by-copying t          ; Don't clobber symlinks 
      version-control t            ; Version numbers for backup files
      delete-old-versions t        ; Delete excess backup files silently
      kept-old-versions 6          ; Num of old versions to keep
      kept-new-versions 9          ; Num of new versions to keep
      delete-by-moving-to-trash t) ; Delete files to trash


;; no bell
(setq visible-bell 1
      ring-bell-function 'ignore
      column-number-mode t)

;; Vim like scrolling
(setq scroll-step 1
      scroll-conservatively 10000)
(setq next-screen-context-lines 5)
(setq line-move-visual nil)

(provide 'core-settings)
