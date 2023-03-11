;; early-init.el -*- lexical-binding: t -*-

;; Garbage collection
(setq gc-cons-percentage 0.6)
(setq gc-cons-threshold most-positive-fixnum)

;; Prefer loading newest compiled .el file
(customize-set-variable 'load-prefer-newer noninteractive)
 
;; Disable ugly emacs UI
(setq inhibit-startup-message t)
(setq default-frame-alist
      '((menu-bar-lines . 0)
	(tool-bar-lines . 0)
	(vertical-scroll-bars)))

(defvar native-comp-deferred-compilation-deny-list nil)
(setq package-enable-at-startup nil)

(defvar asdf-config-directory (expand-file-name "asdf/" user-emacs-directory)
  "Package system config configuration.")

(load (expand-file-name "straight.el" asdf-config-directory))

(provide 'early-init)
