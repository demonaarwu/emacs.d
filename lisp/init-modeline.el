;; init-modeline.el -- Configuration for modeline

(use-package doom-modeline
  :ensure t
  :init
  (setq doom-modeline-modal-icon nil)
  (setq doom-modeline-height 25)
  ;; Whether display the buffer encoding.
  (setq doom-modeline-buffer-encoding nil)
  ;; Specification of \"percentage offset\" of window through buffer.
  ;; See `mode-line-percent-position'.
  (setq doom-modeline-percent-position nil)
  ;; Format used to display line numbers in the mode line.
  ;; See `mode-line-position-line-format'.
  (setq doom-modeline-position-line-format nil)
  (doom-modeline-mode))

(provide 'init-modeline)
;; init-modeline.el ends here
