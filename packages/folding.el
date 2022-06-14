;; folding.el -*- lexical-binding: t; -*-

(use-package hideshow
  :straight nil
  :bind (("C-c f f" . hs-hide-block)
         ("C-c f u" . hs-show-block)
         ("C-c f a f" . hs-hide-all)
         ("C-c f a u" . hs-show-all))
  :hook ((prog-mode . hs-minor-mode)))


(provide 'folding)
