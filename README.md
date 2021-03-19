# cool-admin-devdb(cool-admin 开发用数据库环境)

适用于快速搭建开发用数据库环境,包括 mysql8 及 redis.需要已安装 docker.

## 使用

1.拉取仓库

```sh
git clone https://github.com/cool-team-official/cool-admin-devdb.git
```

2.编辑`docker-compose.yml`,根据注释修改数据库密码及库名（可选操作，如修改后注意同步修改`cool-admin-midway`中的`config.local.ts`中的相关配置）

3.启动数据库

```sh
cd cool-admin-devdb

docker-compose -f "docker-compose.yml" up -d
```

## 常用命令

启动数据库

```sh
docker-compose -f "docker-compose.yml" up -d
```

查看数据库日志

```sh
docker-compose logs -f
```

关闭数据库

```sh
docker-compose -f "docker-compose.yml" down
```

## 常见问题

Q:如何修改 mysql 数据库密码？

A:首次启动前可通过编辑`docker-compose.yml`文件设置数据库密码及默认业务库信息,启动后需通过数据库管理工具(如 navicat)连接数据库后修改,直接修改`docker-compose.yml`将不再起作用。

Q:如何备份/清空数据？

A:数据库运行时所有数据均保存在`docker-compose.yml`文件同级的`data`目录下，可直接备份/恢复该目录,如需清空可删除该目录(为避免读写冲突,操作`data`目录前应关闭数据库)
