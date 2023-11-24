# 应用程序

目前采取的方案是将软件安装集中在 包管理工具 和 商店

主要原因有两个:

1. 方便更新
2. 易于迁移

## 包管理工具

经过一些简单的测试, 目前包管理工具更适合下载一些开源软件和一些 Command-line Interface 工具, 商业软件更适合使用商店来进行集中管理, 下面列举自己常用的软件, 以 Scoop 为例
scoop 相关内容移至[此处](./scoop.md)

## 应用商店

如 Microsoft Store, Steam 等, 常用软件如下

|  软件名  |      商店       |     类别     |
| :------: | :-------------: | :----------: |
| Bandizip | Microsoft Store |    解压缩    |
|   OBS    |      Steam      |  推流/录制   |
| Terminus | Microsoft Store |   SSH&SFTP   |
|  F.lux   | Microsoft Store | 屏幕护眼模式 |

***
## docker 容器
> `#` 表示依赖其他容器使用, 通常为同名/近似名称

|容器名|简介|
|:---:|:---:|
|vaultwarden/server| Bitwarden 的开源版本, 密码管理|
|containrrr/watchtower|自动更新容器|
|linuxserver/qbittorrent|p2p下载器|
|cloudreve/cloudreve|网盘|
|elestio/uptime-kuma|网页状态监控|
|portainer/portainer-ce|docker gui管理|
|tinymediamanager/tinymediamanager|媒体文件刮削/整理|
|nyanmisaka/jellyfin|视频库|
|lissy93/dashy|dashboard|
|gitea/gitea|代码仓库|
|neosmemo/memos|速记|
|advplyr/audiobookshelf|播客|
|syncthing/syncthing|文件同步|
|freshrss/freshrss|rss订阅|
|johngong/baidunetdisk|百度网盘|
|p3terx/aria2-pro|aria2下载|
|grafana/grafana-oss|监视面板|
|photoprism/photoprism|照片集|
|jvmilazz0/kavita|书库|
|`#`jvmilazz0/kavitaemail|邮箱推送|
|`#`gitea/act_runner|ci workflow|

之后可能会根据分类在 [`scripts`](../scripts/docker-compose) 中建立对应 `docker-compose.yml` 文件夹, 方便一键部署