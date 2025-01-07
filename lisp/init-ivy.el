;; init-ivy.el -- Configuration for Ivy

(use-package amx
  :ensure t
  :init
  (amx-mode 1))

(use-package ivy
    :ensure t
    :init
    (ivy-mode 1)
    )

(use-package counsel
  :ensure t)

(use-package find-file-in-project
  :ensure t)

(provide 'init-ivy)
;; init-ivy.el ends here
