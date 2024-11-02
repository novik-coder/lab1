# 使用 Maven 官方镜像作为基础镜像
FROM maven:3.8.5-openjdk-17 AS build

# 设置工作目录
WORKDIR /app

# 将项目的 pom.xml 和源代码复制到工作目录
COPY pom.xml .
COPY src ./src

# 使用 Maven 构建项目
RUN mvn clean package -DskipTests

# 使用较小的基础镜像来运行应用程序
FROM openjdk:17-jdk-slim

# 将构建后的 Jar 文件复制到新的镜像中
COPY --from=build /app/target/*.jar app.jar

# 指定容器启动时执行的命令
ENTRYPOINT ["java", "-jar", "/app.jar"]
