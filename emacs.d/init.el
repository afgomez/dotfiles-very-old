(add-to-list 'load-path "~/.emacs.d")
(add-to-list 'load-path "~/.emacs.d/vendor")

(setq custom-file "~/.emacs.d/custom.el")
(load custom-file 'noerror)

(load "config/defuns")
(load "config/global")
(load "config/ido")
(load "config/autopair")
(load "config/uniquify")

;; Color themes
(load "config/color-theme")

;; Yasnippet
(load "config/yasnippet")

;; Web development combo
(vendor 'rinari)
(load "config/nxhtml")

;; Key bindings
(load "config/bindings")

