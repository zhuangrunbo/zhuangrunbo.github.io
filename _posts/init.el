;;default setting
(ido-mode 1) ;; turn on ido-mode by default

;; plugins
(add-to-list 'load-path "~/.emacs.d/plugins/")
(load "smex/smex.el")
(require 'smex)
(smex-initialize)
(global-set-key (kbd "M-x") 'smex)

;; useful shortcuts
(global-set-key (kbd "C-x l") 'electric-buffer-list)

(defun split-window-layout ()
  "spliting window as two small windows and one big windows"
  (interactive)
  (delete-other-windows)
  (split-window-right)
  (split-window-below))
(global-set-key (kbd "C-x 8") 'split-window-layout)

;; moving cursor to other window shortcuts
(global-set-key (kbd "C-,") 'other-window)
(global-set-key (kbd "C-.") (lambda () 
                          (interactive)
                          (other-window -1)))

;; useful comments of debugging
(defun browse-file-directory ()
  "Open the current directory/package however the OS would (ie Windows explorer).
   If current buffer is a file, then select the file."
  (interactive)
  (if default-directory
      (if buffer-file-name
          (w32-shell-execute 
           "open" "explorer"
           (concat "/e,/select," (convert-standard-filename buffer-file-name)))
          (browse-url-of-file (expand-file-name default-directory)))
    (error "No `default-directory' to open")))
(global-set-key "\C-\M-o" 'browse-file-directory)

(defun copy-to-next-line()
  "Copies the current line, inserts the copy on the next line."
  (interactive)
  (let ((line-contents (buffer-substring (point-at-bol) (point-at-eol)))
        (goal (- (point) (point-at-bol))))
    (print goal)
    (end-of-line)
    (newline)
    (insert line-contents)
    (beginning-of-line)
    (forward-char goal)))
(global-set-key (kbd "M-RET") 'copy-to-next-line)
(global-set-key (kbd "M-m") 'copy-to-next-line)
