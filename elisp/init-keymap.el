;;keymap binding config

;;bind <f2> to open my "init.el" file
(defun open-init-file()
  (interactive)
  (dired "C:\\Users\\NNERO\\AppData\\Roaming\\.emacs.d"))
(global-set-key (kbd "<f2>") 'open-init-file)

;;bind c-d:kill-line c-k:delete char
(global-set-key (kbd "\C-d") 'kill-whole-line)
(add-hook 'c-mode-hook (lambda()
                         (local-set-key (kbd "\C-d") 'kill-whole-line)))
(global-set-key (kbd "C-K") 'delete-char)

;;make copy paste undo to windows usual.
(global-set-key (kbd "C-Z") 'undo)
(global-set-key (kbd "C-c") 'kill-ring-save)
(global-set-key (kbd "C-v") 'yank)
(global-set-key (kbd "M-c") 'scroll-up-command)

;;bind c-t to org-mode todo
(global-set-key (kbd "C-t") 'org-todo)

;;bind open recent files
(global-set-key "\C-x\ \C-r" 'recentf-open-files)

;;copy line
(defun copy-line()
  (interactive)
  (progn
    (move-end-of-line 1)
    (kill-ring-save (line-beginning-position)
		    (line-end-position))
    (newline)
    (yank)))
(global-set-key (kbd "\C-y") 'copy-line)

;;bind <f5> compile c/c++ source code and run target program
(global-set-key (kbd "<f5>") (lambda ()
                               (interactive)
                               (progn
                                 (switch-to-buffer-other-window "*runresult*")
                                 (insert "*****************************************running....   output:\n")
                                 (insert (shell-command-to-string "wmake -C f:\\code\\c\\c_program\\"))
                                 (insert (shell-command-to-string "f:\\code\\c\\c_program\\build\\program.exe"))
                                 (other-window -1))))
                                 

;;bind <f3> to open work directory
(global-set-key (kbd "<f3>") (lambda ()
                               (interactive)
                               (dired "f:\\code\\c\\emacs_c\\")))



;;swiper and counsel in ivy mode
(ivy-mode 1)
(setq enable-recursive-minibuffers t)
(global-set-key "\C-s" 'swiper)
(global-set-key (kbd "C-r") 'ivy-resume)
(global-set-key (kbd "M-x") 'counsel-M-x)
(global-set-key (kbd "C-x C-f") 'counsel-find-file)

;;magit kbd
(global-set-key (kbd "C-x g") 'magit-status)


(provide 'init-keymap)
;;; init-keymap.el ends here
