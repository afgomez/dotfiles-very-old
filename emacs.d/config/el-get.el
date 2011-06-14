(add-to-list 'load-path "~/.emacs.d/el-get")
(require 'el-get)

(setq el-get-sources
      '(el-get nxhtml
        (:name yasnippet
               :after (lambda () (yas/initialize)))
        (:name bm
               :type http
               :url "http://cvs.savannah.gnu.org/viewvc/*checkout*/bm/bm/bm.el"
               :load "bm.el")
        (:name ruby-mode
               :type elpa
               :load "ruby-mode.el"
               :after (lambda () (ruby-mode-hook)))
        (:name inf-ruby  :type elpa)
        (:name ruby-compilation :type elpa)
        (:name css-mode
               :type elpa
               :after (lambda () (css-mode-hook)))
        (:name autopair
               :after (lambda () (autopair-global-mode)))
        (:name rvm
               :type git
               :url "http://github.com/djwhitt/rvm.el.git"
               :load "rvm.el"
               :compile ("rvm.el")
               :after (lambda() (rvm-use-default)))
        (:name yaml-mode 
               :type git
               :url "http://github.com/yoshiki/yaml-mode.git"
               :features yaml-mode
               :after (lambda () (yaml-mode-hook)))
        ))
(el-get 'sync)
