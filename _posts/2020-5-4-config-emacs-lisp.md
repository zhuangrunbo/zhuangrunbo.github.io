---
layout: post
title: emacs setup,lisp
---
reference: 
I don't really remember the link couldn't find it, but I did search in stackover flow and find some useful tips about the 
"shell-command-to-string"

purpose:
improve debugging speed
  
solution: 
;; compile and run, mostly for python 
(global-set-key (kbd "C-M-p") 'python-shell-send-buffer)
(global-set-key (kbd "C-M-u") 'python-compile)
(defun python-compile ()
  (interactive)
  (insert (shell-command-to-string (format "python %s" buffer-file-truename))))
  
 Traps:
 I get stuck for quite a while, seems like "Shell" remind me the couldn't find "D:/apps/git" such directory
 but in here, my path is "D:/apps/git repos/yadayada", seems this command not regard space as a character, so I use a simple way to do it 
 rename my folder name, QAQ... so bad... but I did learn quite a bit of Lisp this time, hopefully next time I will remember this 
 
 Initially I thought the buffer-file-name somehow goes wrong, but it turns out a big NO, because I debug it by printing it, it is correct
 that is why I can realize something wrong in the path.. 
