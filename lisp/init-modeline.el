;; init-modeline.el -- Configuration for modeline

(setq-default mode-line-format nil)

(use-package awesome-tray
  :vc (:fetcher github :repo "manateelazycat/awesome-tray")
  :init
  (setq awesome-tray-mode-line-active-color nil)
  (add-hook 'after-init-hook 'awesome-tray-mode))

(provide 'init-modeline)
;; init-modeline.el ends here
