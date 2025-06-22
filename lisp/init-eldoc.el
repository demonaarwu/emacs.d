;;; init-eldoc.el --- Configuration for Eldoc  -*- lexical-binding: t -*-

(use-package eldoc
  :ensure nil
  :config
  (setq eldoc-display-functions
      (delq #'eldoc-display-in-echo-area eldoc-display-functions)))

(use-package eldoc-box
  :ensure t
  :init
  (setq eldoc-box-cleanup-interval 0)
  (define-key evil-normal-state-map (kbd "K") 'eldoc-box-help-at-point))

(provide 'init-eldoc)
;;; init-eldoc.el ends here
