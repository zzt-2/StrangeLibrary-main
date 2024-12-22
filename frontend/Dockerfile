# 设置基础镜像
FROM docker.1panel.live/library/node:18 AS build
WORKDIR /app
RUN corepack enable pnpm
RUN pnpm config set registry https://registry.npmmirror.com
COPY package.json package-lock.json ./
RUN pnpm install
COPY . .
RUN pnpm run build

FROM docker.1panel.live/library/nginx:latest
# 定义作者
LABEL maintainer="3114178549@qq.com"
# 将dist文件中的内容复制到 /usr/share/nginx/html/ 这个目录下面
COPY --from=build /app/dist/  /usr/share/nginx/html/
COPY ./nginx/nginx.conf /etc/nginx/conf.d/default.conf
ENV TZ=Asia/Shanghai
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
RUN echo "-------------------- web Environmental configuration --------------------"
EXPOSE 80