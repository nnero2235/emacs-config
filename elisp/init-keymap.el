;;keymap binding config

;;bind <f2> to open my "init.el" file
(defun open-init-file()
  (interactive)
  (find-file "C:\\Users\\NNERO\\AppData\\Roaming\\.emacs.d\\init.el"))
(global-set-key (kbd "<f2>") 'open-init-file)

;;bind c-d:kill-line c-k:delete char
(global-set-key (kbd "C-D") 'kill-whole-line)
(global-set-key (kbd "C-K") 'delete-char)

;;bind c-z:undo
(global-set-key (kbd "C-Z") 'undo)

(provide 'init-keymap)
