#! /bin/bash
# Author: Kylezhang

# scripts will automatically download the latest docker and docker-compose, be sure that you've connected to the Internet. And script is on ubuntu.
test_sudo() {
	[ $(id -u) -ne 0 ] && echo "请使用sudo执行该脚本" && exit 2
}

# 安装docker
install_docker() {
	echo "准备安装docker..."
	curl -fsSL get.docker.com -o get-docker.sh
	sudo sh get-docker.sh --prefix="$1"

	# 将当前用户添加至 docker 用户组
	sudo usermod -aG docker $(whoami)

	echo "----docker安装完成----"
}

# 安装docker-compose
install_docker_compose() {
	local install_path="$1"
	local compose_url="https://github.com/docker/compose/releases/latest/download/docker-compose-$(uname -s)-$(uname -m)"

	echo "安装docker-compose"
	sudo curl -L $compose_url -o $install_path/docker-compose
	sudo chmod +x $install_path/docker-compose
	echo "----docker-compose安装完成----"
}

start() {
	read -p "输入安装地址, 默认安装 $HOME/.docker" install_path

	# 安装 Docker
	install_docker ${install_path:=$HOME/.docker}

	# 安装 Docker-compose
	install_docker_compose ${install_path:=$HOME/.docker}
}


