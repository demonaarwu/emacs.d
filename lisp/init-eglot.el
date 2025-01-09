;; init-eglot -- Configuration for Eglot

(use-package eglot
  :hook (prog-mode . (lambda ()
                       (unless (derived-mode-p 'emacs-lisp-mode 'lisp-mode 'snippet-mode)
                         (eglot-ensure))))
  :init
  (setq read-process-output-max (* 1024 1024))
  (setq eglot-autoshutdown t
        eglot-events-buffer-size 0
        eglot-send-changes-idle-time 0.5))

(when (executable-find "emacs-lsp-booster")
  (use-package eglot-booster
    :vc (:fetcher github :repo "jdtsmith/eglot-booster")
    :after eglot
    :init (eglot-booster-mode)))

(provide 'init-eglot)
;; init-eglot.el ends here
