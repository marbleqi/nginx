# 制作构建镜像
FROM nginx

# 调整时区，升级软件包
RUN ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
  # 创建文件目录
  && mkdir -p /data/html

# 引入nginx配置
COPY nginx.conf /etc/nginx/

VOLUME /data/html