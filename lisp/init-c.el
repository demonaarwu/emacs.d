;; init-c.el -- Configuration for C/C++

(defun aaw-c++-mode-hook ()
  (setq c-basic-offset 4))

(add-hook 'c++-mode-hook 'aaw-c++-mode-hook)

(provide 'init-c)
;; init-c.el ends here
