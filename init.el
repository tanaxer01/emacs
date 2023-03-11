;; init.el -*- lexical-binding: t -*-
(require 'base (concat user-emacs-directory "asdf/base"))

(asdf/init
  consult
  company-mode
  evil-mode  
  general

  tree-sitter

  vertico

  lsp-mode
  shortcuts
  theme)
