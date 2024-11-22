;; init-org.el -- Configuration for Org Mode

(setq org-agenda-files '("~/org/"))

(defun insert-title ()
  (interactive)
  (insert "#+title:"))

(setq org-default-notes-file "~/org/inbox.org")

;; When a TODO is set to a done state, record a timestamp
(setq org-log-done 'time)

;; Follow the links
(setq org-return-follows-link t)

;; Make the indentation look nicer
(add-hook 'org-mode-hook 'org-indent-mode)

(provide 'init-org)
;; init-org.el ends here
