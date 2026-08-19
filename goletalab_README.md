# 打包镜像
docker build -f goletalab.Dockerfile -t <镜像名>:<标签> .

# 脚本打包
bash build_goletalab_docker.sh <镜像名> <目标平台>

## 运行单测
docker run --rm <镜像名>:<标签> go test [go test 参数...]
