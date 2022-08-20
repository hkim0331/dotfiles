;;; hkim prefers.
;;; custom?
(unless window-system (menu-bar-mode -1))
(setq global-hl-line-mode nil)
(setq vc-follow-symlinks t)
(setq mouse-drag-copy-region t) ;; require scrolling?
(setq-default tab-width 2 indent-tabs-mode nil)
(global-set-key "\C-cg" 'goto-line) ; M-g M-g
(global-set-key "\C-c\C-m" 'browse-url-at-point)
(add-hook 'after-save-hook
          'executable-make-buffer-file-executable-if-script-p)

;;; aspell
(when (executable-find "/usr/local/bin/aspell")
  (setq-default ispell-program-name "/usr/local/bin/aspell"))
(when (executable-find "/opt/homebrew/bin/aspell")
  (setq-default ispell-program-name "/opt/homebrew/bin/aspell"))
(with-eval-after-load "ispell"
  '(add-to-list 'ispell-skip-region-alist '("[^\000-\377]+")))

;;; dired-x, if gls found, use it.
;;; C-x M-o to toggle omit state.
;;; default omit-mode 2021-05-15.
(require 'dired-x)
(setq dired-omit-files (concat dired-omit-files "\\|^\\..+$"))
(when (executable-find "/usr/local/bin/gls")
  (setq insert-directory-program "/usr/local/bin/gls"))
(when (executable-find "/opt/homebrew/bin/gls")
  (setq insert-directory-program "/opt/homebrew/bin/gls"))
;; prefer omit-mode, enable below.
;; no effect.
;;(setq-default dired-omit-files-p t)
;; this is OK.
;;(add-hook 'dired-mode-hook 'dired-omit-mode)

(require 'wdired)
(define-key dired-mode-map "r" 'wdired-change-to-wdired-mode)

;;; whitespace
(require 'whitespace)
(global-whitespace-mode 1) ; デフォルトで視覚化を有効にする。
(set-face-background 'whitespace-space "red")
(setq whitespace-space-regexp "\\(\u3000\\)")
(setq whitespace-style '(face trailing tabs spaces))

;;; private defuns
(defun eshell/clear ()
  "Clear eshell buffer."
  (interactive)
  (let ((inhibit-read-only t))
    (erase-buffer)))

(defun now()
  "Insert timestamp ISO format."
  (interactive)
  (insert (format-time-string "%Y-%m-%d %H:%M:%S" (current-time))))

(defun today()
  "Insert date string with ISO format."
  (interactive)
  (insert (format-time-string "%Y-%m-%d" (current-time))))



;; CHANGED: was defined as cl-label. 2021-02-13.
(defun first-file-exists (files)
  (cond
   ((null files) nil)
   ((file-exists-p (car files)) (car files))
   (t (first-file-exists (cdr files)))))

(defun memo ()
  "Open private memo.txt."
  (interactive)
  (find-file
   (first-file-exists '("~/.emacs.d/memo.txt"
                        "~/Documents/memo.txt"
                        "~/projects/dotfiles/memo.txt"))))

;;; roswell
;;; Use 'ros emacs' instead. (hkimura 2020-09-14)

;;; super-save
;;; https://github.com/bbatsov/super-save
;;; look 30_super-save.el.
;; (super-save-mode +1)
;; (setq super-save-auto-save-when-idle t
;;       super-save-idle-duration 2)

;;; my profile
(setenv "LANG" "ja_JP.UTF-8")
(setq user-full-name "Hiroshi Kimura")
(setq user-mail-address "hiroshi.kimura.0331@gmail.com")

