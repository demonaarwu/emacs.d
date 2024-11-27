;; init-windows.el -- Configuration for windows managerment

(use-package winum
  :ensure t
  :config
  (setq winum-auto-setup-mode-line nil)
  (add-hook 'after-init-hook 'winum-mode))

(provide 'init-windows)
;; init-windows.el ends here
