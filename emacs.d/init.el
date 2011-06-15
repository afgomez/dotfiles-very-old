;; Emacs configuration
(push "/usr/local/bin" exec-path)
(add-to-list 'load-path "~/.emacs.d")

(load "config/defuns")
(load "config/global")
(load "config/eyecandy")
(load "config/package")
(load "config/hooks")
(load "config/el-get")
(load "config/bindings")
(load "config/bookmarks")


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes (quote ("e76d1d63dfe8ee1138854c936b75f7b819260280" default)))
 '(el-get-standard-packages (quote ("package" "el-get" "nxhtml" "yasnippet" "bm" "ruby-mode" "inf-ruby" "ruby-compilation" "css-mode" "autopair" "rvm" "yaml-mode"))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
