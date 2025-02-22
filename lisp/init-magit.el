;; init-magit.el -- Configuration for Magit

(use-package magit
  :ensure t
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
