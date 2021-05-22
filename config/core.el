

;; ruler
(setq-default display-fill-column-indicator-column 80)
(global-display-fill-column-indicator-mode 1)

;; relative line numbers everywhere
(global-display-line-numbers-mode 1)
(menu-bar-display-line-numbers-mode 'relative)

(set-frame-font "Fira Code-12" nil t)

(setq-default tab-width 2)

;; init with window max size
(add-to-list 'default-frame-alist '(fullscreen . maximized))

(tool-bar-mode -1)
(toggle-scroll-bar -1)
(menu-bar-mode -1)
