---
layout: post
title: 配置emacs 本地快捷键设置
---

 方便查看buffer
(global-set-key (kbd "C-x l") 'buffer-menu)
目前工作习惯是C-M u
(global-set-key (kbd "C-M u") 'compile)

在本地的lisp文件中的init-blabla.el文件设置完成后, M-X load-file, init-blabla.el， restart your emacs and it will work
