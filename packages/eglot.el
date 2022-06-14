;; eglot.el -*- lexical-binding: t; -*-

(use-package eglot
  :straight t
  :hook (prog-mode . eglot-ensure))


(provide 'eglot)
