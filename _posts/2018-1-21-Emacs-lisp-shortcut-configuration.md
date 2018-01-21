---
layout: post
title: 配置emacs lisp
---

(defun default-frame-layout()
  "this is for init the frame layout"
  (interactive)
  (sanityinc/toggle-delete-other-windows)
  (split-window-vertically)
  (split-window-horizontally))

(global-set-key (kbd "C-x 8")'default-frame-layout) ; ctrl /

更新方法， 复制粘贴，到init.el
copy and paste , load-file, ./emacs.d/init.el

再也不用怕窗口崩了，或者想恢复到原来的默认，这种二小一大的会看起来舒服很多，因为C-X 1是 一个，设定一个固定格局方便自己使用
