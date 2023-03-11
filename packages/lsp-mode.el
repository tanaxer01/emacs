;; lsp-mode.el -*- lexical-binding: t -*-

(use-package eglot
  :straight nil
  :config
  (general-define-key
   :states 'motion
   "] d" #'flymake-goto-next-error
   "[ d" #'flymake-goto-prev-error)
  :hook((python-ts-mode go-ts-mode rust-ts-mode) . eglot-ensure))
  

(provide 'lsp-mode)
