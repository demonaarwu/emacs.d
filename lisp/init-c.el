;; init-c.el -- Configuration for C/C++

(defun aaw-c++-mode-hook ()
  (setq c-basic-offset 4))

(add-hook 'c++-mode-hook 'aaw-c++-mode-hook)

(defun compile-and-run ()
  (interactive)
  (let ((c++-file-name buffer-file-name))
    (vterm-other-window)
    (vterm-send-string (concat "g++ " c++-file-name))
    (vterm-send-return)
    (vterm-send-string "./a.out")
    (vterm-send-return)))

(provide 'init-c)
;; init-c.el ends here
