;; general.el -*- lexical-binding:t -*-

(use-package general
  :straight t
  :config
  (general-create-definer asdf/leader
    :prefix "SPC")
  (general-create-definer asdf/local-leader
    :prefix "SPC m"))


(provide 'general)
