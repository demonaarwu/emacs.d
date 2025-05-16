;;; init-dired.el --- Configuration for Dired  -*- lexical-binding: t -*-

(use-package dired
  :ensure nil
  :general
  (aaw-leader-def
    :states 'normal
    "." 'dired))

(use-package diredfl
  :ensure t
  :hook
  (dired-mode . diredfl-mode))

(use-package dired-preview
  :ensure t
  :hook
  (dired-mode . dired-preview-mode)
  :init
  (setq dired-preview-delay 0.2)
  (setq dired-preview-ignored-extensions-regexp
        (concat "\\."
                "\\(gz\\|"
                "zst\\|"
                "tar\\|"
                "xz\\|"
                "rar\\|"
                "zip\\|"
                "iso\\|"
                "epub"
                "\\)")))

(provide 'init-dired)
;;; init-dired.el ends here
