# 基于 golang 官方镜像
FROM golang:1.26.5

# 设置容器内工作目录
WORKDIR /app

# 使用国内 Go 模块代理，加速依赖下载
ENV GOPROXY=https://goproxy.cn,direct
ENV GOSUMDB=sum.golang.google.cn

# 复制源码
COPY . .

# 下载依赖
RUN go mod download

# 这里补一个占位文件，保证目录非空、编译通过。
RUN mkdir -p frontend/dist && touch frontend/dist/.gitkeep

# 编译整个项目
RUN go build ./...
