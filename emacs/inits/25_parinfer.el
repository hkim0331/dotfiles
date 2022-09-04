(use-package parinfer
  :straight t
  :bind
  (("C-," . parinfer-toggle-mode))
  :init
  (progn
    (setq parinfer-extensions
          '(defaults       ; should be included.
            pretty-parens  ; different paren styles for different modes.
            ;;evil           ; If you use Evil.
            ;;lispy          ; If you use Lispy. With this extension,
                             ; you should install Lispy and do not enable lispy-mode directly.
            paredit        ; Introduce some paredit commands.
            smart-tab      ; C-b & C-f jump positions and smart shift with tab & S-tab.
            smart-yank))   ; Yank behavior depend on mode.)
    (add-hook 'emacs-lisp-mode-hook 'parinfer-mode)
    (add-hook 'clojure-mode-hook 'parinfer-mode)
    (add-hook 'clojurescript-mode-hook 'parinfer-mode)
    (add-hook 'clojurec-mode-hook 'parinfer-mode)
    (add-hook 'cider-repl-mode-hook 'parinfer-mode)
    (add-hook 'lisp-mode-hook 'parinfer-mode)
    (add-hook 'racket-mode-hook 'parinfer-mode)))

