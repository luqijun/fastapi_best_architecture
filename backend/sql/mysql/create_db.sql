-- 若存在数据库，则删除
-- DROP DATABASE IF EXISTS fba;
DROP DATABASE IF EXISTS $db_name;
-- 创建数据库
-- CREATE DATABASE fba CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
CREATE DATABASE $db_name CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;