;; init-evil.el -- Configuration for Evil

(use-package evil
  :ensure t
  :init
  (evil-mode 1))

(use-package evil-escape
  :ensure t
  :init
  (evil-escape-mode 1)
  (setq-default evil-escape-key-sequence "kj")
  (setq-default evil-escape-delay 0.2)
  )

(use-package general
  :ensure t
  :init
  (general-create-definer aaw-leader-def
	:prefix "SPC")
  (aaw-leader-def
    :keymaps 'normal
    "ff" 'counsel-find-file
    "fp" 'project-find-file
    "rg" 'counsel-rg
    "ss" 'swiper
    "tt" 'aweshell-new)
  )

(provide 'init-evil)
;; init-evil.el ends here
