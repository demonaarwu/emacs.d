;; init-eglot -- Configuration for Eglot

(use-package eglot
  :config
  (setq eglot-events-buffer-size 0)
  :hook (python-mode . eglot-ensure))

(use-package eglot-booster
  :vc (:fetcher github :repo "jdtsmith/eglot-booster")
  :after eglot
  :config (eglot-booster-mode))

(provide 'init-eglot)
;; init-eglot.el ends here
