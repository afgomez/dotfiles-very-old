(add-to-list 'load-path "~/.emacs.d")
(add-to-list 'load-path "~/.emacs.d/vendor")

(setq custom-file "~/.emacs.d/rmm5t/custom.el")
(load custom-file 'noerror)

(load "config/defuns")
(load "config/global")
(load "config/ido")
(load "config/bindings")
(load "config/autopair")

;; Color themes
(load "config/color-theme")

;; Yasnippet
(load "config/yasnippet")

;; Web development combo
(vendor 'rinari)
(load "config/nxhtml")


