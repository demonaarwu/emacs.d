;; init-theme.el -- Configuration for theme

(add-hook 'prog-mode-hook 'display-line-numbers-mode)

(load-theme 'modus-operandi)
(setq initial-scratch-message ";; Hello, Emacs!")

(provide 'init-theme)
;; init-theme.el ends here
