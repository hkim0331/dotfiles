(use-package flycheck
  :config
  (add-hook 'after-init-hook 'global-flycheck-mode)
  (setq-default flycheck-disabled-checkers '(emacs-lisp-checkdoc)))

;;; Local Variables:
;;; byte-compile-warnings: (not free-vars)
;;; End:
