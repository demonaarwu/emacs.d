;; init-term.el -- Configuration for terminal

(use-package vterm
  :ensure t
  :init
  (setq vterm-exit-functions (lambda (&rest _) (delete-window)))
  (setq vterm-kill-buffer-on-exit t))

(provide 'init-term)
;; init-term.el ends here
