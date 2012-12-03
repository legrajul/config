(require 'color-theme)
(eval-after-load "color-theme"
  '(progn
     (color-theme-initialize)
     (color-theme-charcoal-black)))

(require 'windmove)
(windmove-default-keybindings 'meta)
(add-to-list 'load-path "~/emacs-el/bison")
(add-to-list 'load-path "~/emacs-el/flex")
