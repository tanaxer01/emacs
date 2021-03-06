;; folding.el -*- lexical-binding: t; -*-

(use-package hideshow
  :straight nil
  :bind (("C-c f f" . hs-hide-block)
         ("C-c f u" . hs-show-block)
         ("C-c f a f" . hs-hide-all)
         ("C-c f a u" . hs-show-all))
  :hook ((prog-mode . hs-minor-mode)))

(use-package vimish-fold
  :straight t
  :config
  (vimish-fold-global-mode 1))

(use-package evil-vimish-fold
  :straight t
  :config
  (add-hook 'prog-mode-hook 'evil-vimish-fold-mode)
  )


(provide 'folding)
