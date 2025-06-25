;;; init-web.el --- Configuration for Web Development  -*- lexical-binding: t -*-

(use-package web-mode
  :ensure t
  :mode "\\.html"
  :mode "\\.svelte"
  :mode "\\.html?\\'"
  :mode "\\.css\\'"
  :mode "\\.phtml\\'"
  :mode "\\.tpl\\.php\\'"
  :mode "\\.[agj]sp\\'"
  :mode "\\.as[cp]x\\'"
  :mode "\\.erb\\'"
  :mode "\\.mustache\\'"
  :mode "\\.djhtml\\'"
  :hook
  ((web-mode) . lsp-deferred)
  :config
  (setq web-mode-engines-alist
        '(("svelte" . "\\.svelte\\'")))
  (setq web-mode-markup-indent-offset 4
        web-mode-css-indent-offset 4
        web-mode-code-indent-offset 4
        web-mode-markup-indent-offset 4
        web-mode-script-padding 4
        web-mode-style-padding 4
        web-mode-auto-close-style 2
        web-mode-indent-style 4))

(use-package auto-rename-tag
  :ensure t
  :init
  (add-hook 'web-mode-hook 'auto-rename-tag-mode))

(provide 'init-web)
;;; init-web.el ends here
