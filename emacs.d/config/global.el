;; Mac keys
(setq mac-command-modifier 'meta)
(setq mac-option-modifier nil)

;; Don't show startup screen
(setq inhibit-startup-message t)

;; Remove selection with Del/BS keyt (like all other editors around the world 
(delete-selection-mode t)

;; Two spaces of tabulation
(setq-default tab-width 2)
(setq-default indent-tabs-mode nil)

;; "y or n" instead of "yes or no"
(fset 'yes-or-no-p 'y-or-n-p)

;; Disable backup
(setq make-backup-files nil)
(setq auto-save-default nil)

;; Ido-mode
(ido-mode t)
(setq ido-enable-flex-matching t) ; fuzzy matching is a must have
(setq ido-enable-last-directory-history nil) ; forget latest selected directory names


