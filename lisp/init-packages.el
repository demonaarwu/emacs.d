;; init-packages.el -- Configuration for MELPA

(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)

(unless (package-installed-p 'vc-use-package)
  (package-vc-install "https://github.com/slotThe/vc-use-package"))
(require 'vc-use-package)

(setq use-package-always-defer t)

(provide 'init-packages)
;; init-packages.el ends here
