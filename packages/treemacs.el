;; treemacs.el -*- lexical-binding: t; -*-

(use-package treemacs
  :straight t
  :config
  (global-set-key (kbd "C-c b")   'treemacs)
  (global-set-key (kbd "C-c o p") 'treemacs-select-directory)
  (setq treemacs-width 20))

