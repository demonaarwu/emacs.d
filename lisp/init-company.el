;; init-company.el -- Configuration for Company Mode

(use-package company
  :ensure t
  :init
  (setq company-backends '(company-capf company-dabbrev))
  (setq company-show-numbers t)
  (setq company-idle-delay 0)
  (setq company-minimum-prefix-length 1)
  (global-company-mode 1))

(use-package company-quickhelp
  :ensure t
  :after company
  :init
  (company-quickhelp-mode)
  (setq company-quickhelp-delay 0)
  (setq pos-tip-foreground-color "#ffffff"
        pos-tip-background-color "#ffffff"))

(use-package cape
  :ensure t
  :init
  (add-hook 'completion-at-point-functions #'cape-file)
  (add-hook 'completion-at-point-functions #'cape-elisp-block)
  (add-hook 'completion-at-point-functions #'cape-dict)
  (setq cape-dict-file (concat aaw-emacs-d "misc/english-words.txt")))

(provide 'init-company)
;; init-company.el ends here
