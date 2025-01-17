DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `uid` bigint unsigned NOT NULL COMMENT '用户ID 系统生成',
  `lark_id` varchar(32) NOT NULL DEFAULT '' COMMENT '账户ID 用户设置',
  `password` varchar(32) NOT NULL DEFAULT '' COMMENT '密码',
  `udid` varchar(40) NOT NULL DEFAULT '' COMMENT '注册设备唯一标识',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '用户状态',
  `nickname` varchar(64) NOT NULL DEFAULT '' COMMENT '昵称',
  `firstname` varchar(32) NOT NULL DEFAULT '' COMMENT 'firstname',
  `lastname` varchar(32) NOT NULL DEFAULT '' COMMENT 'lastname',
  `gender` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '性别',
  `birth_ts` bigint NOT NULL DEFAULT '0' COMMENT '生日',
  `email` varchar(64) NOT NULL DEFAULT '' COMMENT 'Email',
  `mobile` varchar(32) NOT NULL DEFAULT '' COMMENT '手机号',
  `reg_platform` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '注册平台',
  `server_id` int NOT NULL DEFAULT '0' COMMENT '分配的ws服务器',
  `city_id` int NOT NULL DEFAULT '0' COMMENT '城市ID',
  `avatar_key` varchar(64) NOT NULL DEFAULT '' COMMENT '小图 72*72',
  `created_ts` bigint NOT NULL DEFAULT '0',
  `updated_ts` bigint NOT NULL DEFAULT '0',
  `deleted_ts` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  UNIQUE KEY `uniq_larkId_deletedTs` (`lark_id`,`deleted_ts`),
  UNIQUE KEY `uniq_mobile_deletedTs` (`mobile`,`deleted_ts`),
  KEY `idx_gender` (`gender`),
  KEY `idx_cityId` (`city_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
