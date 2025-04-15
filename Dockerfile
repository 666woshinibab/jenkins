# 使用官方 Python 镜像
FROM python:3.10-slim

# 设置工作目录
WORKDIR /app

# 拷贝依赖文件并安装依赖
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# 拷贝全部项目文件
COPY . .

# 启动 Flask 应用
CMD ["python", "main.py"]
