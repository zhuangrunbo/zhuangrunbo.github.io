---
layout: post
title: XX-net由于google chrome更新导致证书不安全
---
  做法很简单，直接将xx-3.x.x下的data中certs文件夹与CA.crt等删除，然后重启XX-net与chrome浏览器.
  
  浏览器会自动加载未被排除的XX-net合法证书.
  
![_config.yml](/images/screenshot_xx_net_problem.png)
  
  
