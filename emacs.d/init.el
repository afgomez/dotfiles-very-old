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
