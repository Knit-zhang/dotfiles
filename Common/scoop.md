## 常用软件

| 软件名  | 所属仓库 |    类别     |
| :-----: | :------: | :---------: |
| Calibre |  extras  | 书库 |
|Geekuninstaller|extras|卸载|
|Advancedrenamer|extras|文件名管理|
|Iperf3|main|网络传输检测|
|Ditto|extras|剪贴板|
|Typora|extras|markdown编辑器|
|obsidian|extras|markdown笔记|
|everything|extras|文件搜索|
|LICEcap|extras|gif录制|
|DeskPins|extras|窗口置顶|
|Snipaste|extras|截图|
|Qbittorrent|extras|下载|
|Neovim|main|文本编辑|
|Btop|main|终端任务管理器|
|Tor|main|洋葱路由器|
|HashCat|main|破解工具|
|GPG|main|加密工具|
|CrystalDiskInfo|extras|硬盘状态|
|CrystalDiskMark|extras|硬盘读写速度|
|AdvancedRenamer|extras|批量重命名|
|mediainfo|main|媒体信息|
|mkvtoolnix|extras|编辑MKV文件|
|Cpu-z|extras|CPU 状态|
|Gpu-z|extras|GPU 状态|
|connect|main|ssh 代理|
|k-lite-codec|nonprotable|视频/音频解码器|
|sigil|extras|epub编辑器|
|adb|main|android调试|
|localsend|extras|局域网传输|
|ffmpeg|main|视频编码|
|losslesscut|extras|无损剪辑|
|dbeaver|extras|数据库管理|

## 快速恢复

```powershell
Set-ExecutionPolicy RemoteSigned -Scope CurrentUser #开启远程签名

$env:SCOOP="D:\Scoop" #设置Scoop自定义目录

$env:SCOOP_GLOBAL='D:\Global_Scoop' #设置全局程序安装位置

irm get.scoop.sh | iex #安装Scoop

scoop install 7zip git ria2 #安装必装软件

scoop update #更新 scoop

scoop bucket add extras #添加 extras 桶
scoop bucket add nonportable #添加 nonportable 桶
scoop bucket add nerd-fonts #添加nerd-fonts桶
scoop bucket add games #添加games桶

scoop install calibre geekuninstaller iperf3 figlet sudo ditto typora obsidian everything deskpins qbittorrent tor telegram hashcat gpg crystaldiskinfo crystaldiskmark advancedrenamer LICEcap connect k-lite-codec-pack-mega-np sigil adb ffmpeg losslesscut dbeaver

scoop install osulazer

scoop install python nodejs-lts lua gcc gdb #常用编程环境安装

scoop install redis mongodb mariadb # 常用数据库安装
```

## alias
```powershell
# Install app
scoop alias add i 'scoop install $args[0]' 'Install app'

# Uninstall app
scoop alias add rm 'scoop uninstall $args[0]' 'Uninstall an app'

# List apps
scoop alias add ls 'scoop list' 'List installed apps'

# Update
scoop alias add u 'scoop update $args[0]' 'Update apps, or Scoop itself'

# Show Status
scoop alias add ss 'scoop status' 'Show status and check for new app versions'

# Search app
scoop alias add s 'scoop search $args[0]' 'Search app'
```