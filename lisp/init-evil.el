;; init-evil.el -- Configuration for Evil

(use-package evil
  :ensure t
  :init
  (add-hook 'after-init-hook 'evil-mode)
  (with-eval-after-load 'evil
    (evil-set-initial-state 'vterm-mode 'insert)))

(use-package evil-escape
  :ensure t
  :after evil
  :init
  (evil-escape-mode 1)
  (setq-default evil-escape-key-sequence "kj")
  (setq-default evil-escape-delay 0.2))

(use-package evil-nerd-commenter
  :ensure t
  :after evil
  :bind
  ("M-;" . evilnc-comment-or-uncomment-lines))

(use-package general
  :ensure t
  :after evil
  :init
  (general-define-key
   :states 'normal
   :keymaps 'vterm-mode-map
   "p" 'vterm-yank
   "q" 'vterm-toggle)
  (general-create-definer aaw-leader-def
	:prefix "SPC")
  (aaw-leader-def
    :keymaps 'normal
    "ff" 'find-file
    "fp" 'project-find-file
    "sp" 'project-switch-project
    "tt" 'vterm-toggle
    "sb" 'consult-buffer
    "rr" 'consult-recent-file
    "rg" 'consult-ripgrep
    "fr" 'xref-find-references
    "fd" 'xref-find-definitions
    "gb" 'xref-go-back
    "rn" 'eglot-rename
    "ss" 'consult-line
    "ms" 'magit-status
    "oa" 'org-agenda
    "ot" 'org-todo
    "oc" 'org-capture
    "oj" 'org-metaup
    "cp" 'compile-and-run
    "od" 'org-journal-new-entry
    "ok" 'org-priority-down
    "0" 'winum-select-window-0
    "1" 'winum-select-window-1
    "2" 'winum-select-window-2
    "3" 'winum-select-window-3
    "4" 'winum-select-window-4
    "5" 'winum-select-window-5
    "6" 'winum-select-window-6
    "7" 'winum-select-window-7
    "wh" 'split-window-horizontally
    "wv" 'split-window-vertically
    "ya" 'consult-yasnippet
    )
  )

(use-package which-key
  :ensure t
  :hook
  (after-init . which-key-mode))

(provide 'init-evil)
;; init-evil.el ends here
