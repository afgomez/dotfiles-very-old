;;; Global settings

;; Remove toolbars
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))


;; Use command as the meta key
(setq ns-command-modifier (quote meta))

;; Fix delete key
(normal-erase-is-backspace-mode 1)

;; Don't show the startup screen
(setq inhibit-startup-message t)

;; "y or n" instead of "yes or no"
(fset 'yes-or-no-p 'y-or-n-p)

;; Highlight regions and add special behaviors to regions.
;; "C-h d transient" for more info
(setq transient-mark-mode t)

;; Remove selection with Del/BS key (like all other editors around the world)
(delete-selection-mode 1)

;; Start server
(server-start)

;; Enable CUA rectangles
(setq cua-enable-cua-keys nil)
(cua-mode)

;; Make sure all backup files only live in one place
(setq backup-directory-alist '(("." . "~/.emacs.d/backups")))

;; Trailing whitespace is unnecessary
(add-hook 'before-save-hook (lambda () (delete-trailing-whitespace)))

;; Save a list of recent files visited.
(recentf-mode 1)

;; Show line numbers
(setq linum-format " %d ")
(global-linum-mode 1)

;; Use system clipboard (linux)
(setq x-select-enable-clipboard t)
(setq interprogram-paste-function 'x-cut-buffer-or-selection-value)

;; Put scrollbars on right
(setq vertical-scroll-bars 'right)


;; Start a big frame
(set-frame-size-according-to-resolution)
(add-hook 'before-make-frame-hook 'set-frame-size-according-to-resolution)
(add-hook 'before-make-frame-hook 'turn-off-tool-bar)
