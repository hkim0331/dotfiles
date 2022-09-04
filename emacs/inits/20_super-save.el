;; neede GUI emacs to trigger save buffer by focus lost?
;; https://qiita.com/sambatriste/items/d2657de7a8820ef695c3
(use-package super-save
  :ensure t
  :config
  (setq super-save-auto-save-when-idle t
        super-save-idle-duration 4)
  (super-save-mode +1))
