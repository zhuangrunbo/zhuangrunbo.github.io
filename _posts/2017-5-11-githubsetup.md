---
layout: post
title: githubsetup for windows安装所遇到的问题
---
  主要就是要下载githubSetup.exe，但是由于内外网的问题，所以直接用下载器是无法成功的。
  
  1.官方的githubSetup.exe直接打开，开始下载，若卡死，则直接换方法
  
  2.打开Internet Explore，internet选项-》受信任的站点-》加入[http://github-windows.s3.amazonaws.com/GitHub.application](http://github-windows.s3.amazonaws.com/GitHub.application) ,测试过后是不行的，下载到一半会因为网络问题中断。
  
  3.本人用了代理进行下载,[https://github.com/XX-net/XX-Net](https://github.com/XX-net/XX-Net),还是下载至百分之一百会出现文件校验不成功，dll文件不相同，导致安装失败，可能由于网络原因，这一点目前无法复现，试多了几次就安装成功了
