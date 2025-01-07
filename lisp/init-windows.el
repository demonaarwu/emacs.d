;; init-windows.el -- Configuration for windows managerment

(use-package winum
  :ensure t
  :init
  (setq winum-auto-setup-mode-line t)
  (add-hook 'after-init-hook 'winum-mode))

(setq scroll-step            1
      scroll-conservatively  10000)

(provide 'init-windows)
;; init-windows.el ends here
