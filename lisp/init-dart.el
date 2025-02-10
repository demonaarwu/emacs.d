;;; init-dart.el --- Configuration for Dart language  -*- lexical-binding: t -*-

(use-package dart-mode
  :ensure t)

(add-hook 'dart-mode-hook 'eglot-ensure)

(provide 'init-dart)
;;; init-dart.el ends here
