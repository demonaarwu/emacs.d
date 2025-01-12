;; init-packages.el -- Configuration for MELPA

(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)

(setq use-package-always-defer t)

(provide 'init-packages)
;; init-packages.el ends here
