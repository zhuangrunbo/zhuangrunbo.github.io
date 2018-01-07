---
layout: post
title: 配置emacs,lisp
---
 在emacs下的lisp直接添加对应的global-set-key，添加完成后 M-x load-file，读取保存后的init-local.el， 然后即可立即生效
 
(global-set-key (kbd "C-x l") 'buffer-menu) ; ctrl x + l 查看列表，巨好用，方便切换，如果觉得麻烦也可以用C-x b，switch-buffer
(global-set-key (kbd "S-M-5") 'query-replace-regexp) ; shift-alt-5， 全部替换，方便改变量名
(global-set-key (kbd "C-/") 'undo) ; ctrl /  ， 撤销
