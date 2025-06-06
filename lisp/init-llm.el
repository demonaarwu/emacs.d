;;; init-llm.el --- Configuration for LLMs  -*- lexical-binding: t -*-

(defun aaw-gemini-setup ()
  (gptel-make-gemini "Gemini" :key GEMINI-API-KEY :stream t)
  (setq gptel-model 'gemini-2.0-flash)
  (setq gptel-backend (gptel-make-gemini "Gemini"
                        :key GEMINI-API-KEY
                        :stream t)))

(defun aaw-copilot-setup ()
  (gptel-make-gh-copilot "Copilot")
  (setq gptel-model 'claude-3.7-sonnet
        gptel-backend (gptel-make-gh-copilot "Copilot")))

(defun aaw-llm-model-setup (model)
  (if (equal model "Gemini")
      (aaw-gemini-setup)
    (aaw-copilot-setup)))

(use-package gptel
  :ensure t
  :init
  (aaw-llm-model-setup "Gemini")
  (setq gptel-default-mode 'org-mode)
  (setq gptel-prompt-prefix-alist '((markdown-mode . "### Prompt:") (org-mode . "*** Prompt: \n") (text-mode . "###  Prompt: \n")))
  (setq gptel-response-prefix-alist '((markdown-mode . #1="") (org-mode . "*** Response: \n") (text-mode . #1#)))
  (add-hook 'gptel-post-response-functions 'gptel-end-of-response))

(provide 'init-llm)
;;; init-llm.el ends here

