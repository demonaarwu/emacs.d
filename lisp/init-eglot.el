;; init-eglot -- Configuration for Eglot

(use-package eglot
  :general
  (aaw-leader-def
    :states 'normal
    "rn" 'eglot-rename)
  :init
  (setq read-process-output-max (* 1024 1024))
  (setq eglot-autoshutdown t
        eglot-events-buffer-size 0
        eglot-send-changes-idle-time 0.5)
  (setq eglot-ignored-server-capabilities '(:documentHighlightProvider
                                            :codeLensProvider)))

(use-package xref
  :ensure nil
  :general
  (aaw-leader-def
    :states 'normal
    "fr" 'xref-find-references
    "fd" 'xref-find-definitions
    "gb" 'xref-go-back))

(use-package eglot-booster
  :vc (:url "https://github.com/jdtsmith/eglot-booster")
  :init
  (with-eval-after-load 'eglot
    (eglot-booster-mode)
    (flymake-mode -1)))

(provide 'init-eglot)
;; init-eglot.el ends here
