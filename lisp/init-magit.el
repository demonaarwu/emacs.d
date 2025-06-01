;; init-magit.el -- Configuration for Magit

(use-package magit
  :ensure t
  :config
  (remove-hook 'magit-status-sections-hook 'magit-insert-tags-header)
  (remove-hook 'magit-status-sections-hook 'magit-insert-status-headers)
  (remove-hook 'magit-status-sections-hook 'magit-insert-unpulled-from-pushremote)
  (remove-hook 'magit-status-sections-hook 'magit-insert-unpulled-from-upstream)
  :general
  (aaw-leader-def
    :states 'normal
    "ms" 'magit-status))

(use-package diff-hl
  :ensure t
  :init
  (global-diff-hl-mode))

(add-hook 'magit-post-refresh-hook 'diff-hl-magit-post-refresh)

(provide 'init-magit)
;; init-magit.el ends here
