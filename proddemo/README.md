# cool-admin 单机 docker 编排部署

## 使用说明

首次启动时因数据库初始化较慢，先单独启动 mysql

```sh
docker-compose -f "docker-compose.yml" up -d --build db
```

查看日志

```sh
docker-compose logs -f
```

看到类似输出表示 mysql 已经启动完成

```sh
db_1       | 2021-03-20T05:11:01.703328Z 0 [Warning] [MY-011810] [Server] Insecure configuration for --pid-file: Location '/var/run/mysqld' in the path is accessible to all OS users. Consider choosing a different directory.
db_1       | 2021-03-20T05:11:01.873415Z 0 [System] [MY-010931] [Server] /usr/sbin/mysqld: ready for connections. Version: '8.0.22'  socket: '/var/run/mysqld/mysqld.sock'  port: 3306  MySQL Community Server - GPL.
```

完整启动

```sh
docker-compose -f "docker-compose.yml" up -d --build
```

全部关闭

```sh
docker-compose -f "docker-compose.yml" down
```

## 管理 mysql 数据库

http://localhost:10000/adminer/

用户名/密码为`docker-compose.yml`定义的mysql用户名密码