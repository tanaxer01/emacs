;; evil-mode.el -*- lexical-binding: t -*-
 (setq evil-want-keybinding nil)

(use-package evil-leader
  :straight t
  :config
  (evil-leader/set-leader "<SPC>")
  :init
  (global-evil-leader-mode))

(use-package evil
  :straight t
  :init
  (setq evil-want-integration t)

  :config
  (evil-set-undo-system 'undo-redo)
  (evil-mode 1))

(use-package evil-collection
  :straight t
  :after (evil)
  :config
  (setq evil-collection-mode-list '(dired))
  (evil-collection-init))

(provide 'evil-mode)
