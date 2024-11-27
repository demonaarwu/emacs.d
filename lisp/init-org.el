;; init-org.el -- Configuration for Org Mode

(setq org-agenda-files '("~/org/"))

(defun insert-title ()
  (interactive)
  (insert "#+title: \n")
  (insert "#+date: " (format-time-string "%Y-%m-%d")))

(defun evil-org-setup ()
  (setq evil-want-C-i-jump nil))

(setq org-default-notes-file "~/org/inbox.org")

;; When a TODO is set to a done state, record a timestamp
(setq org-log-done 'time)

;; Follow the links
(setq org-return-follows-link t)

(setq truncate-lines nil)

(add-hook 'org-mode 'evil-org-setup)

(provide 'init-org)
;; init-org.el ends here
