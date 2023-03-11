;; theme.el -*- lexical-binding: t -*-

(use-package doom-themes
  :straight t
  :config
  (load-theme 'doom-sourcerer t)
  (set-display-table-slot standard-display-table 'vertical-border (make-glyph-code ?│))
  (setq doom-themes-enable-bold   t
	doom-themes-enable-italic t))

(provide 'theme)
