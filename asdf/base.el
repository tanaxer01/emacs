;; base.el -*- lexical-binding: t -*-

;; Ensure `asdf` in `load-path`
(add-to-list 'load-path (file-name-directory load-file-name))

(add-hook 'emacs-startup-hook
	  (lambda () (message "Emacs loaded in %s." (emacs-init-time))))

(setq load-path (append '("~/.emacs.d/asdf"
			  "~/.emacs.d/custom"
			  "~/.emacs.d/packages")
			load-path))


;; Measuring time per package
(eval-and-compile
  (defvar asdf-debug-mode
    (or (getenv "DEBUG") init-file-debug)
    "Debug mode, enable through DEBUG=1 or use --debug-init."))

(defvar asdf/init-start-time (current-time) "Time when init.el was started")
(defvar asdf/section-start-time (current-time) "Time when section was started")
(defun asdf/report-time (section)
  (message "%-24s %.2fs" section
	   (float-time (time-subtract (current-time) asdf/section-start-time))))

(defmacro asdf/init (&rest body)
  (declare (indent defun))
  (let ((gc-cons-threshold most-positive-fixnum))
    (add-to-list 'body 'env-fun t)
    (dolist (pkg body)
      (setq asdf/section-start-time (current-time))
      (require pkg nil t)
      (if (not (eq asdf-debug-mode nil)) (asdf/report-time pkg)))))

(require 'settings)
(provide 'base)
