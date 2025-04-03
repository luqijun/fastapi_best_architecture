INSERT INTO sys_dept (
    id,         name,          sort, leader, phone, email, status, del_flag, parent_id, created_time,          updated_time
) VALUES
    (1,         '上海喵呜总部',   0,    null,   null,  null,  1,      0,        null,      '2025-04-02 09:00:00', null),
    (2,         '架构设计部',   0,    null,   null,  null,  1,      0,        1,        '2025-04-02 09:00:00', null),
    (3,         '研发部',       0,    null,   null,  null,  1,      0,        1,        '2025-04-02 09:00:00', null),
    (4,         '算法部',       0,    null,   null,  null,  1,      0,        1,        '2025-04-02 09:00:00', null),
    (5,         'NLP算法',      0,    null,   null,  null,  1,      0,        4,        '2025-04-02 09:00:00', null),
    (6,         '视觉算法',     0,    null,   null,  null,  1,      0,        4,        '2025-04-02 09:00:00', null),
    (7,         '测试部',       0,    null,   null,  null,  1,      0,        1,        '2025-04-02 09:00:00', null),
    (8,         '杭州分公司',   0,    null,   null,  null,  1,      0,        null,     '2025-04-02 09:00:00', null),
    (9,         '研发部',       0,    null,   null,  null,  1,      0,        8,        '2025-04-02 09:00:00', null),
    (10,        '.Net开发',     0,    null,   null,  null,  1,      0,        9,        '2025-04-02 09:00:00', null),
    (11,        '财务部',       0,    null,   null,  null,  1,      0,        8,        '2025-04-02 09:00:00', null),
    (12,        '人事管理部',   0,    null,   null,  null,  1,      0,        8,        '2025-04-02 09:00:00', null);



insert into sys_api (id, name, method, path, remark, created_time, updated_time)
values  (1, '创建API', 'POST', '/api/v1/apis', null, '2024-02-02 11:29:47', null),
        (2, '删除API', 'DELETE', '/api/v1/apis', null, '2024-02-02 11:31:32', null),
        (3, '编辑API', 'PUT', '/api/v1/apis/{pk}', null, '2024-02-02 11:32:22', null);


INSERT INTO sys_menu (
    id,      title,                      name,       sort,  icon,                  path,                menu_type,  component,              perms,               status,  display,  cache,  remark,              parent_id,  created_time,          updated_time
) VALUES 
    (1,  'menus.pureHome',             'Home',      0,     'ep:home-filled',      '/',                 0,          null,                   null,                1,       1,        1,      null,                null,       '2023-07-27 19:17:59',  null),
    (2,  'menus.pureHome',             'Welcome',   0,     null,                  '/welcome',    1,          '/welcome/index.vue',                   null,                1,       1,        1,      null,                1,          '2023-07-27 19:17:59',  null),
    
    (9,  'menu.admin',                 'admin',     0,     'ri:settings-3-line',  '/admin',            0,          null,                   null,                1,       1,        1,      null,                null,       '2023-07-27 19:23:00',  null),
   
    (10, 'menu.admin.sysDept',         'SysDept',   0,     'ri:git-branch-line',  '/admin/dept', 1,          '/admin/dept/index.vue', null,                1,       1,        1,      null,                9,          '2023-07-27 19:23:42',  null),
    -- (11, 'admin.menu.columns.new',     '',          0,     null,                  null,                2,          null,                   'sys:dept:add',      1,       1,        1,      null,                10,         '2024-01-07 11:37:00',  null),
    -- (12, 'admin.menu.columns.edit',    '',          0,     null,                  null,                2,          null,                   'sys:dept:edit',     1,       1,        1,      null,                10,         '2024-01-07 11:37:29',  null),
    -- (13, 'admin.menu.columns.delete',  '',          0,     null,                  null,                2,          null,                   'sys:dept:del',      1,       1,        1,      null,                10,         '2024-01-07 11:37:44',  null),
    
    (18, 'menu.admin.sysUser',         'SysUser',   0,     'ri:admin-line',       '/admin/user', 1,          '/admin/user/index.vue', null,                1,       1,        1,      null,                9,          '2023-07-27 19:25:13',  null),
    -- (19, 'admin.menu.user.edit.roles', '',          0,     null,                  null,                2,          null,                   'sys:user:role:edit',1,       1,        1,      null,                18,         '2024-01-07 12:04:20',  null),
    -- (20, 'admin.menu.columns.delete',  '',          0,     null,                  null,                2,          null,                   'sys:user:del',      1,       1,        1,      '从数据库删除用户',   18,         '2024-01-07 02:28:09',  null),
    
    (21, 'menu.admin.sysRole',         'SysRole',   0,     'ri:admin-fill',       '/admin/role', 1,          '/admin/role/index.vue', null,                1,       1,        1,      null,                9,          '2023-07-27 19:25:45',  null),
    -- (22, 'admin.menu.columns.new',     '',          0,     null,                  null,                2,          null,                   'sys:role:add',      1,       1,        1,      null,                21,         '2024-01-07 11:58:37',  null),
    -- (23, 'admin.menu.columns.edit',    '',          0,     null,                  null,                2,          null,                   'sys:role:edit',     1,       1,        1,      null,                21,         '2024-01-07 11:58:52',  null),
    -- (24, 'admin.menu.columns.delete',  '',          0,     null,                  null,                2,          null,                   'sys:role:del',      1,       1,        1,      null,                21,         '2024-01-07 11:59:07',  null),
    -- (25, 'admin.menu.role.edit.menus', '',          0,     null,                  null,                2,          null,                   'sys:role:menu:edit',1,       1,        1,      null,                21,         '2024-01-07 01:59:39',  null),
    
    (14, 'menu.admin.sysApi',          'SysApi',    0,     'ri:mind-map',         '/admin/api',  1,          '/admin/api/index.vue',  null,                1,       1,        1,      null,                9,          '2023-07-27 19:24:12',  null),
    -- (15, 'admin.menu.columns.new',     '',          0,     null,                  null,                2,          null,                   'sys:api:add',       1,       1,        1,      null,                14,         '2024-01-07 11:57:09',  null),
    -- (16, 'admin.menu.columns.edit',    '',          0,     null,                  null,                2,          null,                   'sys:api:edit',      1,       1,        1,      null,                14,         '2024-01-07 11:57:44',  null),
    -- (17, 'admin.menu.columns.delete',  '',          0,     null,                  null,                2,          null,                   'sys:api:del',       1,       1,        1,      null,                14,         '2024-01-07 11:57:56',  null),

    (26, 'menu.admin.sysMenu',         'SysMenu',   0,     'ep:menu',             '/admin/menu', 1,          '/admin/menu/index.vue', null,                1,       1,        1,      null,                9,          '2023-07-27 19:45:29',  null),
    -- (27, 'admin.menu.columns.new',     '',          0,     null,                  null,                2,          null,                   'sys:menu:add',      1,       1,        1,      null,                26,         '2024-01-07 12:01:24',  null),
    -- (28, 'admin.menu.columns.edit',    '',          0,     null,                  null,                2,          null,                   'sys:menu:edit',     1,       1,        1,      null,                26,         '2024-01-07 12:01:34',  null),
    -- (29, 'admin.menu.columns.delete',  '',          0,     null,                  null,                2,          null,                   'sys:menu:del',      1,       1,        1,      null,                26,         '2024-01-07 12:01:48',  null),


    (31,  'menu.automation',     'automation',    0,     'ri:code-box-line',       '/automation',         0,          null,                                   null,                  1,       1,        1,      null,    null,       '2024-07-27 02:06:20',  '2024-07-27 02:18:52'),
    (32,  'menu.automation.codeGenerator', 'CodeGenerator', 0,     null,           '/automation/code-generator',     1,          '/automation/generator/index.vue',     null,                  1,       1,        1,      null,    31,         '2024-07-27 12:24:54',  null),
    
    (35,  'menu.log',          'log',           0,     'ri:folder-history-line',   '/log',                0,          null,                                   null,                  1,       1,        1,      null,    null,       '2023-07-27 19:19:59',  null),
    (36,  'menu.log.login',       'Login',         0,  'ri:window-line',           '/log/login',    1,          '/log/login/index.vue',                null,                  1,       1,        1,      null,    35,         '2023-07-27 19:20:56',  null),
    (37,  'menu.log.opera',       'Opera',         0,  'ri:history-fill',          '/log/opera',    1,          '/log/opera/index.vue',                null,                  1,       1,        1,      null,    35,         '2023-07-27 19:21:28',  null),

    (45,  'menu.monitor',       'monitor',       0,     'ep:monitor',              '/monitor',            0,          null,                                   null,                  1,       1,        1,      null,    null,       '2023-07-27 19:27:08',  null),
    (46,  'menu.monitor.redis',     'Redis',         0,     null,                  '/monitor/redis',  1,        '/monitor/redis/index.vue',            'sys:monitor:redis',   1,       1,        1,      null,    45,         '2023-07-27 19:28:03',  null),
    (47,  'menu.monitor.server',     'Server',        0,     null,                 '/monitor/server', 1,        '/monitor/server/index.vue',           'sys:monitor:server',  1,       1,        1,      null,    45,         '2023-07-27 19:28:29',  null);   

    -- (500, 'menus.purePermission', 'PermissionPage',   0, 'ep:lollipop', '/permission', 1, null, null, 1, 1, 1, null, null, '2023-07-27 19:17:59', null),
    -- (501, 'menus.purePermissionPage', 'PermissionPage',   0, null, '/permission/page/index', 1, null, null, 1, 1, 1, null, 500, '2023-07-27 19:17:59', null),
    -- (502, 'menus.purePermissionButton', 'PermissionButton',   0, null, '/permission/button', 1, null, null, 1, 1, 1, null, 500, '2023-07-27 19:17:59', null),
    -- (503, 'menus.purePermissionButtonRouter', 'PermissionButtonRouter',  0, null, '/permission/button/router', 1, '/permission/button/index.vue', null, 1, 1, 1, null, 502, '2023-07-27 19:17:59', null),
    -- (504, 'menus.purePermissionButtonLogin', 'PermissionButtonLogin',  0, null, '/permission/button/login', 1, '/permission/button/perms.vue', null, 1, 1, 1, null, 502, '2023-07-27 19:17:59', null);


-- 系统角色
INSERT INTO sys_role (id, name, status, remark, created_time, updated_time)
VALUES (1, 'admin', 1,  '管理员角色', '2025-04-02 09:00:00', null),
       (2, 'common', 1, '普通角色', '2025-04-02 09:00:00', null),
       (3, 'tourist', 1, '游客角色', '2025-04-02 09:00:00', null);

-- 系统角色菜单
INSERT INTO sys_role_menu (id, role_id, menu_id)
VALUES (1, 1, 1),
       (2, 2, 1),
       (3, 2, 1);

-- 系统用户 密码明文：admin123 test1234  tourist123
INSERT INTO sys_user (id, uuid, username, nickname, password, salt, email, is_superuser, is_staff, status, is_multi_login, avatar, phone, join_time, last_login_time, dept_id, created_time, updated_time)
VALUES (1, 'af4c804f-3966-4949-ace2-3bb7416ea926', 'admin', '用户admin', '$2b$12$qODc8u5moNdbZHY0hF0oku09a3NKMcwY7JHN/8YsvjXgiZt9tBLmC', 0x24326224313224714f44633875356d6f4e64625a4859306846306f6b75, 'admin@example.com', 1, 1, 1, 0, null, null, '2023-06-26 17:13:45', null, 1, '2023-06-26 17:13:45', null),
       (2, 'af4c804f-3966-4949-ace2-3bb7416ea927', 'test', '用户test', '$2b$12$wflQqbn8cKE.yrD1i0fOPuB7dV39I0KoNCbzF/T2X56BuuX6T1tkS', 0x2432622431322477666c5171626e38634b452e797244316930664f5075, 'test@example.com', 0, 1, 1, 1, null, null, '2024-06-26 17:13:45', null, 1, '2024-06-26 17:13:45', null),
       (3, 'af4c804f-3966-4949-ace2-3bb7416ea928', 'tourist', '用户tourist', '$2b$12$MBRl1I5Fsog9FbKZQKdwcerLFrFyjUMD1LR61elAyTGjqDUV4py9K', 0x243262243132244d42526c31493546736f673946624b5a514b64776365, 'tourist@example.com', 0, 0, 1, 1, null, null, '2024-07-26 17:13:45', null, 1, '2024-07-26 17:13:45', null);

-- 系统用户角色
INSERT INTO sys_user_role (id, user_id, role_id)
VALUES (1, 1, 1),
       (2, 2, 2),
       (3, 3, 3);

