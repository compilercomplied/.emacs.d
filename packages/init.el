
;; --- packages bootstrap ------------------------------------------------------
(defconst c:emacs-package-config-dir
  (expand-file-name (concat c:emacs-package-dir "config/"))
)

;; --- packages ----------------------------------------------------------------
(use-package solarized-theme :ensure t
  :config (load-theme 'solarized-dark t)
)

(use-package evil :ensure t
  :config
    (evil-mode 1)
    (c:load-tools c:emacs-package-config-dir "evil.el")
)

(use-package which-key :ensure t
  :config (which-key-mode 1)
)
