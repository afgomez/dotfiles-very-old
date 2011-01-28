(add-to-list 'load-path "~/.emacs.d")
(add-to-list 'load-path "~/.emacs.d/vendor")

(setq custom-file "~/.emacs.d/rmm5t/custom.el")
(load custom-file 'noerror)

(load "config/defuns")
(load "config/global")
(load "config/ido")
(load "config/bindings")


;; Color themes
(vendor 'color-theme)
(load "config/color-theme")


;; Other libraries and stuff
(vendor 'yasnippet)
(load "config/yasnippet")
