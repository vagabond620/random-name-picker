# ============ 抽名网站 - 单阶段构建 ============
# 纯静态站点 + 零依赖 Node 静态服务器，构建极快
FROM node:18-slim

WORKDIR /app

# 复制服务器代码（零依赖，无需 npm install）
COPY server.js package.json ./
COPY public ./public

# 环境变量
ENV NODE_ENV=production
ENV PORT=8080

# 暴露端口
EXPOSE 8080

# 启动服务
CMD ["node", "server.js"]
