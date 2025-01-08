;; init-edit.el -- Configuration for edit

(electric-pair-mode 1)
(setq backward-delete-char-untabify-method 'hungry)

(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)
(setq indent-line-function 'insert-tab)

(defun insert-date ()
  (interactive)
  (insert (format-time-string "%Y-%m-%d")))

(provide 'init-edit)
;; init-edit.el ends here
