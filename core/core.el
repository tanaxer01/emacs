;;; core.el -*- lexical-binding: t -*-

;; make sure files are in load-path
(add-to-list 'load-path (file-name-directory load-file-name))

;; Straight.el
(defvar bootstrap-version)
(let ((bootstrap-file
       (expand-file-name "straight/repos/straight.el/bootstrap.el" user-emacs-directory))
      (bootstrap-version 5))
  (unless (file-exists-p bootstrap-file)
    (with-current-buffer
        (url-retrieve-synchronously
         "https://raw.githubusercontent.com/raxod502/straight.el/develop/install.el"
         'silent 'inhibit-cookies)
      (goto-char (point-max))
      (eval-print-last-sexp)))
  (load bootstrap-file nil 'nomessage))

;; Instalar use-package
(straight-use-package 'use-package)

;; use-package insatalara mediante straight
(setq straight-use-package-by-default t      
      straight-check-for-modifications nil
      ;; Don't clone the whole repo
      straight-vc-git-default-clone-depth 1
      straight-recipes-emacsmirror-use-mirror t

      ;; We have it in early-init.el
      straight-enable-package-integration nil)


(setq load-path (append '("~/.emacs.d/core"
			  "~/.emacs.d/packages"
			  "~/.emacs.d/personal"
			  "~/.emacs.d/visual")
			load-path))


;; Load sht
(defmacro asdf/init (&rest body)
  (declare (indent defun))
  (let ((gc-cons-threshold most-positive-fixnum))
    (add-to-list 'body 'env-fun t)
    (dolist (pkg body)
      (require pkg nil t))))

(require 'core-settings)

(provide 'core)
