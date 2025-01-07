;; init-modeline.el -- Configuration for modeline

(setq-default mode-line-format '("%e"
 (:eval
  (format winum-format
          (winum-get-number-string)))
 mode-line-front-space
 (:propertize
  ("" mode-line-mule-info mode-line-client mode-line-modified mode-line-remote)
  display
  (min-width
   (5.0)))
 mode-line-frame-identification mode-line-buffer-identification "   " mode-line-position evil-mode-line-tag)
)

(provide 'init-modeline)
;; init-modeline.el ends here
