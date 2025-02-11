;; init-edit.el -- Configuration for edit

(add-hook 'prog-mode-hook 'electric-pair-mode)
(setq backward-delete-char-untabify-method 'hungry)

(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)

;; Automatically reload files was modified by external program
(use-package autorevert
  :ensure nil
  :diminish
  :hook (after-init . global-auto-revert-mode))

(defun intellij-backspace (arg)
  (interactive "*P")
  (if (or (region-active-p) (not (looking-back "^[[:space:]]*" (line-beginning-position))))
      (backward-delete-char-untabify (prefix-numeric-value arg))
    (let* ((beg (point))
           (end (progn (indent-for-tab-command) (point))))
      (when (<= beg end)
        (if (save-excursion (forward-line -1) (line-blank-p))
            (progn (delete-region (line-beginning-position 0) (line-beginning-position)) (back-to-indentation))
          (delete-indentation))))))

(defun line-blank-p ()
  (save-excursion
    (beginning-of-line)
    (looking-at "[[:space:]]*$")))

(global-set-key (kbd "<backspace>") #'intellij-backspace)

(provide 'init-edit)
;; init-edit.el ends here
