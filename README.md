## 使用 docker-compose 直接启动项目

1. 将 src 和 pom.xml 放在项目根目录的 code 目录下
2. 修改 docker-compose.yml 文件中的 mysql 相关信息
3. docker-compose up -d 启动
4. docker-compose logs -f 查看 tomcat 运行 logs