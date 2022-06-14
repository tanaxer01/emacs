;; doom-theme.el -*- lexical-binding: t; -*-

(use-package doom-themes
  :straight t
  :config
  (load-theme 'doom-one t)
  (set-display-table-slot standard-display-table 'vertical-border (make-glyph-code ?│))
  (setq doom-themes-enable-bold   t
	doom-themes-enable-italic t)
  (custom-set-faces
   `(vertical-border ((t (:background ,(doom-color "#0c0c0c") ) ) ))))

(provide 'doom-theme)
