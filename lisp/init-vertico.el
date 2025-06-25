;; init-vertico.el -- Configuration for Vertico

(use-package vertico
  :ensure t
  :custom
  (vertico--cycle t)
  :hook
  (after-init . vertico-mode))

;; Persist history over Emacs restarts. Vertico sorts by history position.
(use-package savehist
  :after vertico
  :init
  (savehist-mode))

(use-package consult
  :ensure t
  :after vertico
  :init
  (setq consult-async-min-input 1)
  :general
  (aaw-leader-def
    :states 'normal
    "ff" 'find-file
    "rg" 'consult-ripgrep
    "sb" 'consult-buffer
    "rr" 'consult-recent-file
    "ya" 'consult-yasnippet
    "ss" 'consult-line))

;; Configure directory extension.
(use-package vertico-directory
  :after vertico
  :ensure nil
  ;; More convenient directory navigation commands
  :bind (:map vertico-map
              ("RET" . vertico-directory-enter)
              ("DEL" . vertico-directory-delete-char)
              ("M-DEL" . vertico-directory-delete-word))
  ;; Tidy shadowed file names
  :hook (rfn-eshadow-update-overlay . vertico-directory-tidy))

(use-package orderless
  :ensure t
  :init
  (defun aaw/use-orderless-in-minibuffer ()
    (setq-local completion-styles '(substring orderless)))
  (add-hook 'minibuffer-setup-hook 'aaw/use-orderless-in-minibuffer))

(use-package marginalia
  :ensure t
  :after vertico
  :init
  (marginalia-mode 1))

(use-package prescient
  :ensure t)

(provide 'init-vertico)
;; init-vertico.el ends here
