;;; init-llm.el --- Configuration for LLMs  -*- lexical-binding: t -*-

(use-package gptel
  :ensure t
  :init
  ;; OPTIONAL configuration
  ;; :key can be a function that returns the API key.
  (gptel-make-gemini "Gemini" :key GEMINI-API-KEY :stream t)

  ;; OPTIONAL configuration
  (setq
   gptel-model 'gemini-2.0-flash
   gptel-backend (gptel-make-gemini "Gemini"
                   :key GEMINI-API-KEY
                   :stream t))
  (setq gptel-default-mode 'org-mode)
  (setq gptel-prompt-prefix-alist '((markdown-mode . "### Prompt:") (org-mode . "*** Prompt: \n") (text-mode . "###  Prompt: \n")))
  (setq gptel-response-prefix-alist '((markdown-mode . #1="") (org-mode . "*** Response: \n") (text-mode . #1#)))
  (add-hook 'gptel-post-response-functions 'gptel-end-of-response))

(provide 'init-llm)
;;; init-llm.el ends here

