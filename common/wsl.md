## 安装

使用 GitHub 的仓库 [yuk7/ArchWSL](https://github.com/yuk7/ArchWSL)，文档内有三种安装方式：[zip](https://github.com/yuk7/ArchWSL/releases/download/22.10.16.0/Arch.zip)，appx & scoop

本文选择使用 scoop 包管理器

```powershell
scoop install archwsl
```
安装完成后,使用 `arch` 进入 archlinux 子系统(默认以 root 用户登录)

## 基本配置

 ### 配置用户
 配置用户 sudo 权限, 在`sudoers.d`目录下创建一个新文件 wheeel

 ```bash
 echo "%wheel ALL=(ALL) ALL" > /etc/sudoers.d/wheel
 ```
 然后建立目录
 ```bash
 useradd -m -G wheel -s /bin/bash {username}
 ```
在archwsl安装目录下(scoop安装为$env:scoop/apps/archwsl/current),配置默认用户
```powershell
./Arch.exe config --default-user {username}
```
### 使用 pacman
```bash
sudo pacman-key --init
sudo pacman-key --populate
sudo pacman -Syy archlinux-keyring
```
同时, 为了方便使用, 将 pacman 下载源换为国内源(这里使用清华镜像源)
```bash
sudo echo "Server = https://mirrors.tuna.tsinghua.edu.cn/archlinux/$repo/os/$arch" >> /etc/pacman.d/mirrorlist
```

