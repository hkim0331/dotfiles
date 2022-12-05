;;;; init.el --- Custom init.el

;;; Commentary:
;;; * 2021-09-27 cider enbug? try inf-clojure.
;;; * 2020-01-11 try ansible synchronize
;;; * 2019-06-12 use-package
;;; * 2019-07-07 straight.el
;;; * 2019-07-21 init-loader
;;; * 2019-11-15 ansible
;;; * 2022-08-20 straight repository url changed

;;; Code:

(defvar bootstrap-version)
(let ((bootstrap-file
       (expand-file-name "straight/repos/straight.el/bootstrap.el" user-emacs-directory))
      (bootstrap-version 6))
  (unless (file-exists-p bootstrap-file)
    (with-current-buffer
        (url-retrieve-synchronously
         "https://raw.githubusercontent.com/radian-software/straight.el/develop/install.el"
         'silent 'inhibit-cookies)
      (goto-char (point-max))
      (eval-print-last-sexp)))
  (load bootstrap-file nil 'nomessage))

(straight-use-package 'use-package)
(setq straight-use-package-by-default t)

(use-package init-loader)
(init-loader-load "~/.emacs.d/inits/")

(custom-set-variables
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(auto-save-list-file-prefix nil)
 '(backup-inhibited t t)
 '(cider-repl-display-help-banner nil)
 '(column-number-mode t)
 '(completion-ignore-case t t)
 '(delete-auto-save-files t)
 '(eshell-save-history-on-exit nil)
 '(explicit-shell-file-name "/bin/zsh")
 '(inhibit-startup-screen t)
 '(init-loader-show-log-after-init 'error-only)
 '(ispell-local-dictionary "en_US")
 '(kill-whole-line t)
 '(make-backup-files nil)
 '(next-line-add-newlines nil)
 '(read-file-name-completion-ignore-case t)
 '(redisplay-dont-pause nil t)
 '(require-final-newline t)
 '(ring-bell-function 'ignore)
 '(safe-local-variable-values
   '((cider-enhanced-cljs-completion-p)
     (cider-ns-refresh-after-fn . "integrant.repl/resume")
     (cider-ns-refresh-before-fn . "integrant.repl/suspend")))
 '(scroll-bar-mode nil)
 '(show-paren-mode t)
 '(size-indication-mode t)
 '(super-save-mode t)
 '(tool-bar-mode nil)
 '(tooltip-mode nil)
 '(visible-bell t))

(custom-set-faces)

(provide 'init)
;;; init.el ends here
