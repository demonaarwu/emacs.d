;; init-company.el -- Configuration for Company Mode

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

(use-package company
  :ensure t
  :init
  (aaw-ispell-setup)
  (setq company-show-numbers t)
  (setq company-idle-delay 0)
  (setq company-minimum-prefix-length 1)
  (global-company-mode 1)
  (add-hook 'text-mode-hook 'aaw-company-ispell-setup))


(provide 'init-company)
;; init-company.el ends here
