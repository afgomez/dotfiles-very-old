;; Use command as the meta key
(setq ns-command-modifier (quote meta))

;; Don't show the startup screen
(setq inhibit-startup-message t)

;; "y or n" instead of "yes or no"
(fset 'yes-or-no-p 'y-or-n-p)

;; Highlight regions and add special behaviors to regions.
;; "C-h d transient" for more info
(setq transient-mark-mode t)

;; Remove selection with Del/BS key (like all other editors around the world)
(delete-selection-mode 1)

;; Make sure all backup files only live in one place
(setq backup-directory-alist '(("." . "~/.emacs.d/backups")))

;; Trailing whitespace is unnecessary
(add-hook 'before-save-hook (lambda () (delete-trailing-whitespace)))

;; Save a list of recent files visited.
(recentf-mode 1)

;; Show line numbers
(setq linum-format " %d ")
(global-linum-mode 1)


