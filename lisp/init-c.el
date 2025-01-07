;; init-c.el -- Configuration for C/C++

(defun aaw-c++-mode-hook ()
  (setq c-basic-offset 4))

(add-hook 'c++-mode-hook 'aaw-c++-mode-hook)

(defun compileandrun()
  (interactive)
  (let* ((src (file-name-nondirectory (buffer-file-name)))
         (exe (file-name-sans-extension src)))
    (compile (concat "g++ " src " -o " exe " && timeout 1s ./" exe ))))

(provide 'init-c)
;; init-c.el ends here
