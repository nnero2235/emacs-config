;; ui config

;; load theme 
(load-theme 'soft-stone t)

;; Close title bar
(tool-bar-mode -1)

;; close scroll bar
(scroll-bar-mode -1)

;; show global line number
(global-linum-mode t)

;;change cursor to thick
(setq-default cursor-type 'bar)

;;close init splash screen
(setq inhibit-splash-screen 1)

;;high-light current cursor line
(global-hl-line-mode 1)

;;font consolas size:14
(set-default-font "Consolas-14")

;;export
(provide 'init-ui)
