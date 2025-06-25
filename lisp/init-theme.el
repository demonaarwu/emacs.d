;; init-theme.el -- Configuration for theme

(add-hook 'prog-mode-hook 'display-line-numbers-mode)

(load-theme 'modus-operandi-tinted)
(setq initial-scratch-message ";; 但行好事，莫問前程")

(provide 'init-theme)
;; init-theme.el ends here
