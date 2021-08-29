import { EggAppConfig, EggAppInfo, PowerPartial } from 'egg';

export type DefaultConfig = PowerPartial<EggAppConfig>;

export default (appInfo: EggAppInfo) => {
  const config = {} as DefaultConfig;

  config.orm = {
    type: 'mysql',
    host: process.env.MYSQL_HOST || '127.0.0.1',
    port: parseInt(process.env.MYSQL_PORT || '3306'),
    username: process.env.MYSQL_USER || 'root',
    password: process.env.MYSQL_PASSWORD || '123123',
    database: process.env.MYSQL_DATABASE || 'cool',
    // 自动建表 注意：线上部署的时候不要使用，有可能导致数据丢失
    synchronize: false,
    // 打印日志
    logging: false,
    // 字符集
    charset: 'utf8mb4',
  };

  config.logger = {
    coreLogger: {
      consoleLevel: 'ERROR',
    },
  };

  // cool配置
  config.cool = {
    // 是否初始化模块数据库
    initDB: false,
  };

  // cool 插件配置
  config.cool = {
    // redis为插件名称
    redis: {
      host: process.env.REDIS_HOST || 'redis',
      password: process.env.REDIS_PASS || '',
      port: parseInt(process.env.REDIS_PORT || '6379'),
      db: parseInt(process.env.REDIS_DB || '0'),
    },
    // oss 配置
    oss: {
      accessKeyId: process.env.OSS_AccessKeyId || 'djkldslkj',
      accessKeySecret: process.env.OSS_accessKeySecret || '12345678',
      bucket: process.env.OSS_bucket || 'oss',
      endpoint: process.env.OSS_endpoint || 'alidev.lidong.xin',
    },
  };

  return config;
};
