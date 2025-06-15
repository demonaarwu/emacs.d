;; init-org.el -- Configuration for Org Mode

(use-package org
  :ensure nil
  :init
  (setq org-startup-with-latex-preview t)
  (setq org-agenda-files '("~/org/"))
  (setq org-default-notes-file "~/org/inbox.org")
  ;; When a TODO is set to a done state, record a timestamp
  (setq org-log-done 'time)
  ;; Follow the links
  (setq org-return-follows-link t)
  (setq truncate-lines nil)
  ;; Org Capture Configuration
  (setq org-capture-templates nil)
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

(use-package anki-editor
  :ensure t
  :after org
  :config
  (setq anki-editor-create-decks t ;; Allow anki-editor to create a new deck if it doesn't exist
        anki-editor-org-tags-as-anki-tags t))

(provide 'init-org)
;; init-org.el ends here
