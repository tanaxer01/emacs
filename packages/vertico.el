;; vertico.el -*- lexical-binding: t -*-

(use-package vertico
  :straight t
  :config
  (setq vertico-count 10
	vertico-resize t
	vertico-cycle  t)
  :init (vertico-mode))

(provide 'vertico)
