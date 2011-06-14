(deftheme cobalt-dark
  "Sightly darker cobalt theme from textmate")

(custom-theme-set-faces
 'cobalt-dark
 '(default ((t (:stipple nil :background "#0c1c38" :foreground "#ffffff" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal ))))
 '(cursor ((t (:background "#aa5500"))))
 '(escape-glyph ((t (:foreground "#7cff7e"))))
 '(highlight ((t (:background "#071224"))))
 '(region ((t (:background "#8f6248"))))
 '(mode-line ((t (:foreground "#333" :background "#e3e3e3"))))
 '(mode-line-inactive ((t (:foreground "#333" :background "#666"))))
 '(fringe ((t (:background "#1d2c46"))))
 '(minibuffer-prompt ((t (:foreground "#559af8"))))
 '(font-lock-builtin-face ((t (:foreground "#a9c4d4"))))
 '(font-lock-comment-face ((t (:foreground "#559af8" :slant italic))))
 '(font-lock-constant-face ((t (:foreground "#f9789e"))))
 '(font-lock-function-name-face ((t (:foreground "#f7dd00"))))
 '(font-lock-keyword-face ((t (:foreground "#f8af25"))))
 '(font-lock-string-face ((t (:foreground "#57e022"))))
 '(font-lock-type-face ((t (:foreground "#ffee80"))))
 '(font-lock-variable-name-face ((t (:foreground "#d6d6d6"))))
 '(font-lock-warning-face ((t (:background "#8d180a" :foreground "#f9f9f9")))))

(provide-theme 'cobalt-dark)
