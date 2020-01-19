# 知识图谱标注工具

## 基于docker构建

- docker构建命令

~~~python
docker build -f Dockerfile -t labelsystem/kg .   # 构建镜像
docker save -o labelsystem_kg.tar labelsystem/kg  # 导出镜像
tar -czvf labelsystem_kg.tar.gz labelsystem_kg.tar  # 压缩
tar -xzvf labelsystem_kg.tar.gz  # 解压
docker load -i labelsystem_kg.tar  # 镜像导入
~~~

- docker镜像启动

~~~python
docker run -dit -p 11998:8001 --name kg labelsystem/kg  # 首次启动
docker run -dit -p 11998:8001 -v /home/d5000/dialogue_system/label_system/label_system_kg/testData.json:/rasa-nlu-trainer/data/testData.json --privileged --name kg labelsystem/kg  # 首次启动，挂载目录
docker start kg  # 启动
docker stop kg  # 关闭
docker rm kg  # 删除
~~~
