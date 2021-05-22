
;; --- package bootstrap -------------------------------------------------------
(require 'package)
(add-to-list 
  'package-archives '("melpa" . "https://melpa.org/packages/")
)
(package-initialize)

(unless 
  (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package)
)


;; --- config bootstrap --------------------------------------------------------
(defconst c:emacs-dir (getenv "EMACS_HOME") "")
(defconst c:emacs-init-file
  (expand-file-name (concat c:emacs-dir "/init.el"))
)

(defconst c:emacs-package-dir
  (expand-file-name (concat c:emacs-dir "/packages/"))
)
(defconst c:emacs-config-dir
  (expand-file-name (concat c:emacs-dir "/config/"))
)


(defun c:load-tools (router filename)
  (load (expand-file-name (concat router filename)))
)


;; --- imports -----------------------------------------------------------------
(c:load-tools c:emacs-package-dir "init.el")
(c:load-tools c:emacs-config-dir "preload.el")
(c:load-tools c:emacs-config-dir "core.el")


;; -----------------------------------------------------------------------------
;; =============================================================================
;; -----------------------------------------------------------------------------
