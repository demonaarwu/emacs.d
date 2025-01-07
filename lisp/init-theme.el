;; init-theme.el -- Configuration for theme

(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)

(global-display-line-numbers-mode 1)

(load-theme 'modus-operandi)
(setq inhibit-startup-screen t)
(setq initial-scratch-message ";; Hello, Emacs!")

(provide 'init-theme)
;; init-theme.el ends here
