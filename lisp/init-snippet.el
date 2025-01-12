;; init-snippet.el -- Configuration for YASnippet

(use-package yasnippet
  :ensure t
  :init
  (setq yas-verbosity 0)
  (yas-global-mode 1)
  (global-set-key (kbd "M-y") 'yas-expand)
  ;; make sure that when editing a snippet, the cursor won't move points the snippet saved.
  (add-hook 'snippet-mode-hook (lambda ()
                                 (make-local-variable 'after-save-hook)
                                 (setq after-save-hook nil))))

(use-package yasnippet-snippets
  :ensure t)

(use-package consult-yasnippet
  :ensure t)

(provide 'init-snippet)
;; init.snippet.el ends here
