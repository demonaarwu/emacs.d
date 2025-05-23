;; init-org.el -- Configuration for Org Mode

(setq org-agenda-files '("~/org/"))

(defun insert-title ()
  (interactive)
  (insert "#+title: \n")
  (insert "#+date: " (format-time-string "%Y-%m-%d")))

(setq org-default-notes-file "~/org/inbox.org")

;; When a TODO is set to a done state, record a timestamp
(setq org-log-done 'time)

;; Follow the links
(setq org-return-follows-link t)

(setq truncate-lines nil)

;; Org Capture Configuration
(setq org-capture-templates nil)

(defun get-words-learned-today ()
  (read-string "English Words: "))

(defun get-math-problems-done-today ()
  (read-string "Math Problems: "))

(setq aaw-habit-tracker
      '("h"
        "Habit Tracker"
        table-line
        (file+headline "habit-tracker.org" "Habit Tracker")
        "| %(format-time-string \"%Y-%m-%d\") | %(get-words-learned-today)| %(get-math-problems-done-today)|"))

(add-to-list 'org-capture-templates aaw-habit-tracker)

(use-package org
  :ensure nil
  :general
  (aaw-leader-def
    :states 'normal
    "oa" 'org-agenda
    "ot" 'org-todo
    "oc" 'org-capture
    "oj" 'org-metaup
    "od" 'org-journal-new-entry
    "ok" 'org-priority-down
    "gt" 'org-open-at-point))

(use-package org-journal
  :ensure t
  :init
  (setq org-journal-dir "~/org/journal")
  (setq org-journal-file-type 'weekly))

(use-package virtual-auto-fill
  :ensure t
  :init
  (add-hook 'org-mode-hook 'virtual-auto-fill-mode))

(use-package writeroom-mode
  :ensure t
  :hook
  (org-mode . writeroom-mode)
  (markdown-mode . writeroom-mode)
  :custom
  (writeroom-width 120))

(use-package org-download
  :ensure t
  :init
  (add-hook 'org-mode-hook 'org-download-enable))

(use-package org-indent
  :ensure nil
  :hook
  (org-mode . org-indent-mode))

(provide 'init-org)
;; init-org.el ends here
