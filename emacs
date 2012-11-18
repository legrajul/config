(require 'color-theme)
(eval-after-load "color-theme"
  '(progn
     (color-theme-initialize)
     (color-theme-charcoal-black)))

(require 'windmove)
(windmove-default-keybindings 'meta)
