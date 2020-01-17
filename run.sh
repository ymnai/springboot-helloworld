#操作/项目路径(Dockerfile存放的路径)
BASE_PATH=/var/lib/jenkins/workspace/springboot-helloworld
# 源jar路径
SOURCE_PATH=/var/lib/jenkins/workspace/springboot-helloworld/target
#容器id
CID=$(docker ps | grep "hello" | awk '{print $1}')

DATE=`date +%Y%m%d%H%M`

# 构建docker镜像
function build(){
	echo "开始构建镜像..."
	cd $BASE_PATH
	docker build -t hello .
}

# 运行docker容器
function run(){
	build
	if [ -n "$CID" ]; then
		echo "存在hello容器，CID=$CID,重启docker容器 ..."
			docker stop $CID
			docker rm $CID
			docker run -d hello -p 8080:8080 --name helloworld
			-H unix:///var/run/docker.sock
		echo "hello容器重启完成"
	else
		echo "不存在hello容器，docker run创建容器..."
			docker run -d hello -p 8080:8080 --name helloworld
			-H unix:///var/run/docker.sock
		echo "hello容器创建完成"
	fi
}

#入口
run
