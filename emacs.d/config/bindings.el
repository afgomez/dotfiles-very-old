;; Use ido to find recent files
(global-set-key (kbd "C-x f") 'recentf-ido-find-file)

;; CUA undo
(global-set-key (kbd "C-z") 'undo)
(global-set-key (kbd "M-z") 'undo)

;; Duplicate line
(global-set-key (kbd "C-S-d") 'duplicate-line)



;; Textmate-like M-RET
(define-key global-map (kbd "RET") 'newline-and-indent)
(global-set-key (kbd "M-RET") 'tm-next-line)

;; Mac friendly save
(global-set-key (kbd "M-s") 'save-buffer)
