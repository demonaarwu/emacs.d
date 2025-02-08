;; init-rust.el -- Configuration for Rust language

(use-package rust-mode
  :ensure t)

(add-hook 'rust-mode-hook 'eglot-ensure)

(provide 'init-rust)
;; init-rust.el ends here
