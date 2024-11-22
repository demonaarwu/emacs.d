;; init-company.el -- Configuration for Company Mode

(use-package company
  :ensure t
  :config
  (setq company-idle-delay 0)
  (setq company-minimum-prefix-length 2)
  (add-hook 'after-init-hook 'global-company-mode))

(provide 'init-company)
;; init-company.el ends here
