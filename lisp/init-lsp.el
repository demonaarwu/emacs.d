;; init-lsp.el -- Configuration for LSP-bridge

(use-package yasnippet
  :ensure t
  :init
  (add-hook 'after-init-hook 'yas-global-mode))

(use-package markdown-mode
  :ensure t)

;;(use-package popon
;;  :vc (popon :url "https://codeberg.org/akib/emacs-popon"))

(use-package lsp-bridge
  :vc (:fetcher github :repo "manateelazycat/lsp-bridge")
  :init
  (add-hook 'python-mode-hook 'lsp-bridge-mode)
  (add-hook 'c++-mode-hook 'lsp-bridge-mode))

;;(use-package acm-terminal
 ;; :vc (:fetcher github :repo "twlz0ne/acm-terminal")
  ;;:init
 ;; (unless (display-graphic-p)
  ;;            (with-eval-after-load 'acm
   ;;             (require 'acm-terminal))))

(provide 'init-lsp)
;; init-lsp.el ends here
