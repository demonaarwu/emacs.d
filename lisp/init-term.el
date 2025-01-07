;; init-term.el -- Configuration for terminal

(use-package vterm
  :ensure t)

(defun open-vterm ()
  (interactive)
  (split-window-horizontally)
  (other-window 1)
  (vterm))

(provide 'init-term)
;; init-term.el ends here
