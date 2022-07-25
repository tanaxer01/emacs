;; doom-theme.el -*- lexical-binding: t; -*-

(use-package doom-themes
  :straight t
  :config
  (load-theme 'doom-one t)
  (set-display-table-slot standard-display-table 'vertical-border (make-glyph-code ?│))
  (setq mode-line-end-spaces nil)
  (setq doom-themes-enable-bold   t
	doom-themes-enable-italic t)
  (custom-set-faces
   `(default         ((t (:background  "black"))))
   `(vertical-border ((t (:background  "black"))))) )

(provide 'doom-theme)
