## 常用软件

| 软件名  | 所属仓库 |    类别     |
| :-----: | :------: | :---------: |
| Calibre |  extras  | 书库 |
|Geekuninstaller|extras|卸载|
|Iperf3|main|网络传输检测|
|Ditto|extras|剪贴板|
|Typora|extras|markdown编辑器|
|obsidian|extras|markdown笔记|
|everything|extras|文件搜索|
|LICEcap|extras|gif录制|
|DeskPins|extras|窗口置顶|
|Snipaste|extras|截图|
|Qbittorrent|extras|下载|
|HashCat|main|破解工具|
|GPG4win|main|加密工具|
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
|pandoc|main|标记语言转换器|
|resilio-sync|nonportable|p2p文件共享|
|spcaesniffer|extras|磁盘文件大小|
|tailscale|extras|Vnet组网|
|kid3|extras|id3标签编辑|
|bind|main|dns查询|
|tor-browser|extras|darkweb|
|starship|main|prompt|
|postman|extras|api tester|

## 快速恢复

```powershell
Set-ExecutionPolicy RemoteSigned -Scope CurrentUser #开启远程签名

$env:SCOOP="D:\Scoop" #设置Scoop自定义目录

$env:SCOOP_GLOBAL='D:\Global_Scoop' #设置全局程序安装位置

irm get.scoop.sh | iex #安装Scoop

scoop install 7zip git aria2 curl bind starship #安装必装软件

scoop update #更新 scoop

scoop bucket add extras #添加 extras 桶
scoop bucket add nonportable #添加 nonportable 桶
scoop bucket add nerd-fonts #添加nerd-fonts桶
scoop bucket add games #添加games桶

scoop install calibre geekuninstaller iperf3 ditto typora obsidian everything LICEcap deskpins snipaste qbittorrent hashcat gpg4win crystaldiskinfo crystaldiskmark advancedrenamer mediainfo mkvtoolnix cpu-z gpu-z connect k-lite-codec-pack-mega-np sigil adb localsend ffmpeg losslesscut dbeaver pandoc resilio-sync-np spacesniffer tailscale kid3 tor-browser

scoop install osulazer

scoop install JetBrainsMono-NF # 常用字体安装

scoop install python nodejs-lts lua gcc gdb #常用编程环境安装

scoop install redis mongodb mariadb postgresql # 常用数据库安装
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