;; init-edit.el -- Configuration for edit

(add-hook 'prog-mode-hook 'electric-pair-mode)
(setq backward-delete-char-untabify-method 'hungry)

(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)

;; Automatically reload files was modified by external program
(use-package autorevert
  :ensure nil
  :diminish
  :hook (after-init . global-auto-revert-mode))

(provide 'init-edit)
;; init-edit.el ends here
