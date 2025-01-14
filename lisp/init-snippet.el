;; init-snippet.el -- Configuration for YASnippet

(use-package yasnippet
  :ensure t
  :init
  (setq yas-verbosity 0)
  (yas-global-mode 1)
  (global-set-key (kbd "M-y") 'yas-expand))

(use-package yasnippet-snippets
  :ensure t)

(use-package consult-yasnippet
  :ensure t)

(provide 'init-snippet)
;; init.snippet.el ends here
