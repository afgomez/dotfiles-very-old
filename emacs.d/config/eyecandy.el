;; Remove toolbars
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))

;; Remove scrollbar
(scroll-bar-mode -1)

;; Blinking cursor (I like it!)
(blink-cursor-mode t)

;; Highlight matchin parens
(show-paren-mode t)

;; Font and theme
(set-frame-font "inconsolata-14")
(load-theme 'cobalt-dark)

;; Show column number
(column-number-mode t)

;; No tooltips
(tooltip-mode -1)

;; Highlight current line
(global-hl-line-mode t)


