---
layout: post
title: 配置emacs python环境所遇到的问题
---
  主要还是shortcut的问题，在emacs环境下自定义快捷键，C-M-global-set-key, 输入快捷键组合，然后输入对应的command即可，例如switch-next-buffer
  
  emacs下快捷键还有优先级，以下是快捷键设置优先级排名
  
  high priority to low 
  
  key-translation-map > minor-model-map > local-set-key > global-set-key
  
  只在我的emacs上看到最后两种，这个优先级参考其他人的博客

  
  
