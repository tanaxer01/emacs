;; shortcuts.el -*- lexical-binding: t -*-

(asdf/leader
  :keymaps 'normal
  "p f" 'consult-find
  "r c" #'(lambda () (interactive) (consult-find "~/.emacs.d/"))
  "p v" 'dired-jump

  "c c" 'compile
  "c C" 'recompile
  )

(provide 'shortcuts)
