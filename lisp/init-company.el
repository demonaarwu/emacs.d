;; init-company.el -- Configuration for Company Mode

(use-package company-quickhelp
  :ensure t
  :after company
  :init
  (company-quickhelp-mode)
  (setq company-quickhelp-delay 0)
  (setq pos-tip-foreground-color "#ffffff"
        pos-tip-background-color "#ffffff"))

(defun aaw-ispell-setup ()
  (with-eval-after-load 'ispell
    (setq ispell-look-p nil)
    (let* ((dict (concat aaw-emacs-d "misc/english-words.txt")))
      (when (and (null ispell-alternate-dictionary)
                 (file-exists-p dict))
        ;; @see https://github.com/redguardtoo/emacs.d/issues/977
        ;; fallback to built in dictionary
        (setq ispell-alternate-dictionary (file-truename dict))))))

(defun aaw-company-ispell-setup ()
  (when (boundp 'company-backends)
    (make-local-variable 'company-backends)
    (push 'company-ispell company-backends)
    (setq aaw-dictionary (concat aaw-emacs-d "misc/english-words.txt"))
    (cond
     ((and (boundp 'ispell-alternate-dictionary) ispell-alternate-dictionary)
      (setq company-ispell-dictionary ispell-alternate-dictionary))
     (t (setq company-ispell-dictionary (file-truename aaw-dictionary))))))

;; (use-package cape
  ;; :ensure t
  :init
  ;; (add-hook 'completion-at-point-functions #'cape-file)
  ;; (add-hook 'completion-at-point-functions #'cape-elisp-block)
  ;; (add-hook 'completion-at-point-functions #'cape-dict)
  ;; (setq cape-dict-file (concat aaw-emacs-d "misc/english-words.txt")))

(use-package company
  :ensure t
  :init
  (aaw-ispell-setup)
  ;; (setq company-backends '(company-dabbrev))
  (setq company-show-numbers t)
  (setq company-idle-delay 0)
  (setq company-minimum-prefix-length 1)
  (global-company-mode 1))

(use-package company-prescient
  :ensure t
  :hook
  (company-mode . company-prescient-mode))

(provide 'init-company)
;; init-company.el ends here
