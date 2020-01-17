#操作/项目路径(Dockerfile存放的路径)
BASE_PATH=/home/work/springboot-helloworld

#容器id
CID=$(docker ps | grep "helloworld" | awk '{print $1}')

DATE=`date +%Y%m%d%H%M`

# 构建docker镜像
function build(){
	echo "开始构建镜像..."
	cd $BASE_PATH
	docker build -t helloworld .
}

# 运行docker容器
function run(){
	build
	if [ -n "$CID" ]; then
		echo "存在helloworld容器，CID=$CID,重启docker容器 ..."
			docker stop $CID
			docker rm $CID
			docker run -d -p 12000:12000 helloworld \
			-H unix:///var/run/docker.sock
		echo "helloworld容器重启完成"
	else
		echo "不存在helloworld容器，docker run创建容器..."
			docker run -d -p 12000:12000 helloworld \
			-H unix:///var/run/docker.sock
		echo "helloworld容器创建完成"
	fi
}

#入口
run
