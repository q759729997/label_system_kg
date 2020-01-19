FROM docker.io/python:3.6-buster
RUN mkdir /label_system_kg

WORKDIR /label_system_kg
COPY . ./

# 依赖安装
RUN pip install filelock -i https://pypi.douban.com/simple

# 修改sh权限
RUN chmod +x *.sh
# 安装
RUN sh install_default_user.sh

# Define the network ports that this container will listen on at runtime.
EXPOSE 8001

CMD ["python", "standalone.py"]
