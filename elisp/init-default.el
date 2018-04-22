;;; package --- Summary

;;disabled backup files and auto-save
(setq-default make-backup-files nil)
(setq auto-save-default nil)

;;enabled delete selection mode
(delete-selection-mode 1)

;;enabled smooth-scrolling-mode
;;(smooth-scrolling-mode -1)

;;open popwindow mode
(require 'popwin)
(popwin-mode 1)

;;enabled flycheck
(add-hook 'after-init-hook #'global-flycheck-mode)

;;open global complete any things
(global-company-mode t)

;;set reading encoding
(prefer-coding-system 'utf-8)
;;set writing encoding
(setq buffer-file-coding-system 'utf-8)

;;open smartparens
;(require 'smartparens-config)

;; indent 4 spaces
(setq-default indent-tabs-mode nil)
(setq tab-width 4)

;; open recent file mode
(require 'recentf)
(recentf-mode 1)

(setq default-directory "f:\\code")

;; c/c++ config
(require 'ycmd)
(add-hook 'c++-mode-hook #'global-ycmd-mode)
(set-variable 'ycmd-server-command '("python" "f:\code\YouCompleteMe\third_party\ycmd\ycmd"))
(set-variable 'ycmd-global-config "c:\\Users\\NNERO\\AppData\\Roaming\\.emacs.d\\.ycm-extra-conf.py")
(require 'company-ycmd)
(company-ycmd-setup)
(add-hook 'c-mode-hook 'imenu-add-menubar-index)
(require 'flycheck-ycmd)
(flycheck-ycmd-setup)

;; enabled () high-light
(add-hook 'emacs-lisp-mode-hook 'show-paren-mode)

(provide 'init-default)
;;; init-default.el ends here

