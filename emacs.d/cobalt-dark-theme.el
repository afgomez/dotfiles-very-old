(deftheme cobalt-dark
  "Sightly darker cobalt theme from textmate")

(custom-theme-set-faces
 'cobalt-dark
 '(default ((t (:stipple nil :background "#0b152b" :foreground "#ffffff" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal ))))
 '(cursor ((t (:background "#ccc"))))
 '(escape-glyph ((t (:foreground "#7cff7e"))))
 '(highlight ((t (:background "#070D1B"))))
 '(region ((t (:background "#8f6248"))))
 '(mode-line ((t (:foreground "#333" :background "#e3e3e3"))))
 '(mode-line-inactive ((t (:foreground "#333" :background "#666"))))
 '(fringe ((t (:background "#1c2539"))))
 '(minibuffer-prompt ((t (:foreground "#559af8"))))
 '(font-lock-builtin-face ((t (:foreground "#a9c4d4"))))
 '(font-lock-comment-face ((t (:foreground "#2f8afa" :slant italic))))
 '(font-lock-constant-face ((t (:foreground "#f9789e"))))
 '(font-lock-function-name-face ((t (:foreground "#ffdd0b"))))
 '(font-lock-keyword-face ((t (:foreground "#f79d0b"))))
 '(font-lock-string-face ((t (:foreground "#57e022"))))
 '(font-lock-type-face ((t (:foreground "#ffee80"))))
 '(font-lock-variable-name-face ((t (:foreground "#d6d6d6"))))
 '(font-lock-warning-face ((t (:background "#8d180a" :foreground "#f9f9f9")))))

(provide-theme 'cobalt-dark)
