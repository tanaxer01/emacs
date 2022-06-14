;;; early-init.el -*- lexical-binding: t; -*-

(setq
 site-run-file nil                       ; No Site-wide run-time init
 inhibit-default-init t                  ; No Site-wide default library
 gc-const-threshold most-positive-fixnum ; Very large threshold for garbage
                                         ; collector during init

 package-enable-at-startup nil)          ; For straight.el

(setq native-compeln-load-path
      (list (expand-file-name "eln-cache" user-emacs-directory)))

;; Reset garbage collector limit after init process has ended (8Mo)
(add-hook 'after-init-hook
	  #'(lambda () (setq gc-cons-threshold (* 8 1024 1024))))

;; Disable ugly emacs UI
(push '(menu-bar-lines . 0)   default-frame-alist)
(push '(tool-bar-lines . 0)   default-frame-alist)
(push '(vertical-scroll-bars) default-frame-alist)
