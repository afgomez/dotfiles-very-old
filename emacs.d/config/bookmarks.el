;; http://emacsblog.org/2007/03/22/bookmark-mania/
(setq bm-restore-repository-on-load t)
(require 'bm)
(global-set-key (kbd "<M-f2>") 'bm-toggle)
(global-set-key (kbd "<f2>")   'bm-next)
(global-set-key (kbd "<S-f2>") 'bm-previous)

;; make bookmarks persistent as default
(setq-default bm-buffer-persistence t)
(setq bm-highlight-style 'bm-highlight-only-fringe)

;; Loading the repository from file when on start up.
(add-hook' after-init-hook 'bm-repository-load)
 
;; Restoring bookmarks when on file find.
(add-hook 'find-file-hooks 'bm-buffer-restore)
 
;; Saving bookmark data on killing a buffer
(add-hook 'kill-buffer-hook 'bm-buffer-save)
 
;; Saving the repository to file when on exit.
;; kill-buffer-hook is not called when emacs is killed, so we
;; must save all bookmarks first.
(add-hook 'kill-emacs-hook '(lambda nil
                              (bm-buffer-save-all)
                              (bm-repository-save)))

;; Set bookmarks clicking in the fringe
;; http://www.emacswiki.org/cgi-bin/wiki/VisibleBookmarks
(global-set-key (kbd "<left-fringe> <mouse-1>") #'(lambda(event)
                                                    (interactive "e")
                                                    (save-excursion
                                                      (mouse-set-point event)
                                                      (bm-toggle))))


