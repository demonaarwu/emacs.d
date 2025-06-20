;; init-evil.el -- Configuration for Evil

(use-package evil
  :ensure t
  :init
  (setq evil-want-keybinding nil)
  (add-hook 'after-init-hook 'evil-mode)
  (with-eval-after-load 'evil
    (evil-set-initial-state 'vterm-mode 'insert)))

(use-package evil-escape
  :ensure t
  :after evil
  :init
  (evil-escape-mode 1)
  (setq-default evil-escape-key-sequence "kj")
  (setq-default evil-escape-delay 0.2)
  (add-to-list 'evil-escape-excluded-major-modes 'magit-status-mode))

(use-package evil-nerd-commenter
  :ensure t
  :after evil
  :bind
  ("M-;" . evilnc-comment-or-uncomment-lines))

(use-package general
  :ensure t
  :config
  (general-create-definer aaw-leader-def
	:prefix "SPC"))

(use-package which-key
  :ensure t
  :hook
  (after-init . which-key-mode))

(use-package evil-collection
  :after evil
  :ensure t
  :init
  (evil-collection-init))

(provide 'init-evil)
;; init-evil.el ends here
