---
layout: post
title: 配置emacs python环境所遇到的问题
---
  为了方便直接安装elpy但是同样也是要在python-mode下才能运行
  
  遇到如下问题：依托github issues link 解决问题：
  
  [https://github.com/jorgenschaefer/elpy/issues/737](https://github.com/jorgenschaefer/elpy/issues/737)
    
  'error: Required feature 'pyvenv' was not provided'

  Solved the same problem with GNU Emacs 25.1.1 by doing:
  
  M-x package-reinstall pyvenv
  
  M-x package-reinstall elpy
  
  最终elpy得以安装成功，但是依旧compile fail，sometimes can print hello world or something like test print
  
  
  
