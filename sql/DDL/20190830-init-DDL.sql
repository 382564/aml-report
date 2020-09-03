-- 初始化-部门表数据
INSERT INTO sys_dept (DEPT_ID, PARENT_ID, ANCESTORS, DEPT_NAME, ORDER_NUM, LEADER, PHONE, EMAIL, STATUS, DEL_FLAG, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME) VALUES ('100', '0', '0', '上海人寿保险股份有限公司', '0', '管理员', '15888888888', '111@qq.com', '0', '0', 'admin', TO_DATE('2018-03-16 11:33:00', 'SYYYY-MM-DD HH24:MI:SS'), 'admin', TO_DATE('2019-10-05 00:05:47', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO sys_dept (DEPT_ID, PARENT_ID, ANCESTORS, DEPT_NAME, ORDER_NUM, LEADER, PHONE, EMAIL, STATUS, DEL_FLAG, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME) VALUES ('101', '100', '0,100', '上海分公司', '1', '管理员', '15888888888', '11@qq.com', '0', '0', 'admin', TO_DATE('2018-03-16 11:33:00', 'SYYYY-MM-DD HH24:MI:SS'), 'admin', TO_DATE('2019-10-05 00:05:47', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO sys_dept (DEPT_ID, PARENT_ID, ANCESTORS, DEPT_NAME, ORDER_NUM, LEADER, PHONE, EMAIL, STATUS, DEL_FLAG, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME) VALUES ('103', '101', '0,100,101', '信息技术部', '1', '管理员', '15888888888', '11@qq.com', '0', '0', 'admin', TO_DATE('2018-03-16 11:33:00', 'SYYYY-MM-DD HH24:MI:SS'), 'admin', TO_DATE('2019-10-05 00:05:26', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO sys_dept (DEPT_ID, PARENT_ID, ANCESTORS, DEPT_NAME, ORDER_NUM, LEADER, PHONE, EMAIL, STATUS, DEL_FLAG, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME) VALUES ('104', '101', '0,100,101', '法律合规部', '2', '管理员', '15888888888', '11@qq.com', '0', '0', 'admin', TO_DATE('2018-03-16 11:33:00', 'SYYYY-MM-DD HH24:MI:SS'), 'admin', TO_DATE('2019-10-05 00:05:47', 'SYYYY-MM-DD HH24:MI:SS'));

-- 初始化-用户信息表数据
INSERT INTO sys_user (USER_ID, DEPT_ID, LOGIN_NAME, USER_NAME, USER_TYPE, EMAIL, PHONENUMBER, SEX, AVATAR, PASSWORD, SALT, STATUS, DEL_FLAG, LOGIN_IP, LOGIN_DATE, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK) VALUES ('1', '103', 'admin', '管理员', '00', '123@163.com', '15888888888', '1', NULL, '29c67a30398638269fe600f73a054934', '111111', '0', '0', '127.0.0.1', TO_DATE('2019-08-30 10:02:33', 'SYYYY-MM-DD HH24:MI:SS'), 'admin', TO_DATE('2018-03-16 11:33:00', 'SYYYY-MM-DD HH24:MI:SS'), 'admin', TO_DATE('2019-10-05 00:00:29', 'SYYYY-MM-DD HH24:MI:SS'), '管理员');
INSERT INTO sys_user (USER_ID, DEPT_ID, LOGIN_NAME, USER_NAME, USER_TYPE, EMAIL, PHONENUMBER, SEX, AVATAR, PASSWORD, SALT, STATUS, DEL_FLAG, LOGIN_IP, LOGIN_DATE, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK) VALUES ('100', '104', '001', '001', '00', '001@sh.com', '13612345678', '0', NULL, '91cf156baeb627787f936e0b8c87fe6d', '75735c', '0', '0', '127.0.0.1', TO_DATE('2019-08-28 09:24:09', 'SYYYY-MM-DD HH24:MI:SS'), 'admin', TO_DATE('2020-09-09 03:54:01', 'SYYYY-MM-DD HH24:MI:SS'), 'admin', TO_DATE('2019-10-05 00:06:32', 'SYYYY-MM-DD HH24:MI:SS'), NULL);

-- 初始化-岗位信息表数据
insert into sys_post values(1, 'ceo',  '董事长',    1, '0', 'admin', TO_DATE('2018-03-16 11-33-00', 'YYYY-MM-DD HH24:MI:SS'), 'ry', TO_DATE('2018-03-16 11-33-00', 'YYYY-MM-DD HH24:MI:SS'), '');
insert into sys_post values(2, 'se',   '项目经理',  2, '0', 'admin', TO_DATE('2018-03-16 11-33-00', 'YYYY-MM-DD HH24:MI:SS'), 'ry', TO_DATE('2018-03-16 11-33-00', 'YYYY-MM-DD HH24:MI:SS'), '');
insert into sys_post values(3, 'hr',   '人力资源',  3, '0', 'admin', TO_DATE('2018-03-16 11-33-00', 'YYYY-MM-DD HH24:MI:SS'), 'ry', TO_DATE('2018-03-16 11-33-00', 'YYYY-MM-DD HH24:MI:SS'), '');
insert into sys_post values(4, 'user', '普通员工',  4, '0', 'admin', TO_DATE('2018-03-16 11-33-00', 'YYYY-MM-DD HH24:MI:SS'), 'ry', TO_DATE('2018-03-16 11-33-00', 'YYYY-MM-DD HH24:MI:SS'), '');

-- 初始化-角色信息表数据
insert into sys_role values('1', '管理员',   'admin',  1, 1, '0', '0', 'admin', TO_DATE('2018-03-16 11-33-00', 'YYYY-MM-DD HH24:MI:SS'), 'admin', TO_DATE('2018-03-16 11-33-00', 'YYYY-MM-DD HH24:MI:SS'), '管理员');
insert into sys_role values('2', '普通角色', 'common', 2, 2, '0', '0', 'admin', TO_DATE('2018-03-16 11-33-00', 'YYYY-MM-DD HH24:MI:SS'), 'admin', TO_DATE('2018-03-16 11-33-00', 'YYYY-MM-DD HH24:MI:SS'), '普通角色');

-- 初始化-菜单信息表数据
INSERT INTO sys_menu (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK) VALUES ('1', '系统管理', '0', '1', '#', NULL, 'M', '0', NULL, 'fa fa-gear', 'admin', TO_DATE('2018-03-16 11:33:00', 'SYYYY-MM-DD HH24:MI:SS'), 'ry', TO_DATE('2018-03-16 11:33:00', 'SYYYY-MM-DD HH24:MI:SS'), '系统管理目录');
INSERT INTO sys_menu (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK) VALUES ('100', '用户管理', '1', '1', '/system/user', NULL, 'C', '0', 'system:user:view', '#', 'admin', TO_DATE('2018-03-16 11:33:00', 'SYYYY-MM-DD HH24:MI:SS'), 'ry', TO_DATE('2018-03-16 11:33:00', 'SYYYY-MM-DD HH24:MI:SS'), '用户管理菜单');
INSERT INTO sys_menu (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK) VALUES ('101', '角色管理', '1', '2', '/system/role', NULL, 'C', '0', 'system:role:view', '#', 'admin', TO_DATE('2018-03-16 11:33:00', 'SYYYY-MM-DD HH24:MI:SS'), 'ry', TO_DATE('2018-03-16 11:33:00', 'SYYYY-MM-DD HH24:MI:SS'), '角色管理菜单');
INSERT INTO sys_menu (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK) VALUES ('103', '部门管理', '1', '4', '/system/dept', NULL, 'C', '0', 'system:dept:view', '#', 'admin', TO_DATE('2018-03-16 11:33:00', 'SYYYY-MM-DD HH24:MI:SS'), 'ry', TO_DATE('2018-03-16 11:33:00', 'SYYYY-MM-DD HH24:MI:SS'), '部门管理菜单');
INSERT INTO sys_menu (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK) VALUES ('104', '岗位管理', '1', '5', '/system/post', NULL, 'C', '0', 'system:post:view', '#', 'admin', TO_DATE('2018-03-16 11:33:00', 'SYYYY-MM-DD HH24:MI:SS'), 'ry', TO_DATE('2018-03-16 11:33:00', 'SYYYY-MM-DD HH24:MI:SS'), '岗位管理菜单');
INSERT INTO sys_menu (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK) VALUES ('1000', '用户查询', '100', '1', '#', NULL, 'F', '0', 'system:user:list', '#', 'admin', TO_DATE('2018-03-16 11:33:00', 'SYYYY-MM-DD HH24:MI:SS'), 'ry', TO_DATE('2018-03-16 11:33:00', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO sys_menu (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK) VALUES ('1001', '用户新增', '100', '2', '#', NULL, 'F', '0', 'system:user:add', '#', 'admin', TO_DATE('2018-03-16 11:33:00', 'SYYYY-MM-DD HH24:MI:SS'), 'ry', TO_DATE('2018-03-16 11:33:00', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO sys_menu (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK) VALUES ('1002', '用户修改', '100', '3', '#', NULL, 'F', '0', 'system:user:edit', '#', 'admin', TO_DATE('2018-03-16 11:33:00', 'SYYYY-MM-DD HH24:MI:SS'), 'ry', TO_DATE('2018-03-16 11:33:00', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO sys_menu (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK) VALUES ('1003', '用户删除', '100', '4', '#', NULL, 'F', '0', 'system:user:remove', '#', 'admin', TO_DATE('2018-03-16 11:33:00', 'SYYYY-MM-DD HH24:MI:SS'), 'ry', TO_DATE('2018-03-16 11:33:00', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO sys_menu (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK) VALUES ('1004', '用户导出', '100', '5', '#', NULL, 'F', '0', 'system:user:export', '#', 'admin', TO_DATE('2018-03-16 11:33:00', 'SYYYY-MM-DD HH24:MI:SS'), 'ry', TO_DATE('2018-03-16 11:33:00', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO sys_menu (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK) VALUES ('1005', '用户导入', '100', '6', '#', NULL, 'F', '0', 'system:user:import', '#', 'admin', TO_DATE('2018-03-16 11:33:00', 'SYYYY-MM-DD HH24:MI:SS'), 'ry', TO_DATE('2018-03-16 11:33:00', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO sys_menu (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK) VALUES ('1006', '重置密码', '100', '7', '#', NULL, 'F', '0', 'system:user:resetPwd', '#', 'admin', TO_DATE('2018-03-16 11:33:00', 'SYYYY-MM-DD HH24:MI:SS'), 'ry', TO_DATE('2018-03-16 11:33:00', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO sys_menu (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK) VALUES ('1007', '角色查询', '101', '1', '#', NULL, 'F', '0', 'system:role:list', '#', 'admin', TO_DATE('2018-03-16 11:33:00', 'SYYYY-MM-DD HH24:MI:SS'), 'ry', TO_DATE('2018-03-16 11:33:00', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO sys_menu (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK) VALUES ('1008', '角色新增', '101', '2', '#', NULL, 'F', '0', 'system:role:add', '#', 'admin', TO_DATE('2018-03-16 11:33:00', 'SYYYY-MM-DD HH24:MI:SS'), 'ry', TO_DATE('2018-03-16 11:33:00', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO sys_menu (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK) VALUES ('1009', '角色修改', '101', '3', '#', NULL, 'F', '0', 'system:role:edit', '#', 'admin', TO_DATE('2018-03-16 11:33:00', 'SYYYY-MM-DD HH24:MI:SS'), 'ry', TO_DATE('2018-03-16 11:33:00', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO sys_menu (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK) VALUES ('1010', '角色删除', '101', '4', '#', NULL, 'F', '0', 'system:role:remove', '#', 'admin', TO_DATE('2018-03-16 11:33:00', 'SYYYY-MM-DD HH24:MI:SS'), 'ry', TO_DATE('2018-03-16 11:33:00', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO sys_menu (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK) VALUES ('1011', '角色导出', '101', '5', '#', NULL, 'F', '0', 'system:role:export', '#', 'admin', TO_DATE('2018-03-16 11:33:00', 'SYYYY-MM-DD HH24:MI:SS'), 'ry', TO_DATE('2018-03-16 11:33:00', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO sys_menu (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK) VALUES ('1016', '部门查询', '103', '1', '#', NULL, 'F', '0', 'system:dept:list', '#', 'admin', TO_DATE('2018-03-16 11:33:00', 'SYYYY-MM-DD HH24:MI:SS'), 'ry', TO_DATE('2018-03-16 11:33:00', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO sys_menu (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK) VALUES ('1017', '部门新增', '103', '2', '#', NULL, 'F', '0', 'system:dept:add', '#', 'admin', TO_DATE('2018-03-16 11:33:00', 'SYYYY-MM-DD HH24:MI:SS'), 'ry', TO_DATE('2018-03-16 11:33:00', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO sys_menu (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK) VALUES ('1018', '部门修改', '103', '3', '#', NULL, 'F', '0', 'system:dept:edit', '#', 'admin', TO_DATE('2018-03-16 11:33:00', 'SYYYY-MM-DD HH24:MI:SS'), 'ry', TO_DATE('2018-03-16 11:33:00', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO sys_menu (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK) VALUES ('1019', '部门删除', '103', '4', '#', NULL, 'F', '0', 'system:dept:remove', '#', 'admin', TO_DATE('2018-03-16 11:33:00', 'SYYYY-MM-DD HH24:MI:SS'), 'ry', TO_DATE('2018-03-16 11:33:00', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO sys_menu (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK) VALUES ('1020', '岗位查询', '104', '1', '#', NULL, 'F', '0', 'system:post:list', '#', 'admin', TO_DATE('2018-03-16 11:33:00', 'SYYYY-MM-DD HH24:MI:SS'), 'ry', TO_DATE('2018-03-16 11:33:00', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO sys_menu (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK) VALUES ('1021', '岗位新增', '104', '2', '#', NULL, 'F', '0', 'system:post:add', '#', 'admin', TO_DATE('2018-03-16 11:33:00', 'SYYYY-MM-DD HH24:MI:SS'), 'ry', TO_DATE('2018-03-16 11:33:00', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO sys_menu (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK) VALUES ('1022', '岗位修改', '104', '3', '#', NULL, 'F', '0', 'system:post:edit', '#', 'admin', TO_DATE('2018-03-16 11:33:00', 'SYYYY-MM-DD HH24:MI:SS'), 'ry', TO_DATE('2018-03-16 11:33:00', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO sys_menu (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK) VALUES ('1023', '岗位删除', '104', '4', '#', NULL, 'F', '0', 'system:post:remove', '#', 'admin', TO_DATE('2018-03-16 11:33:00', 'SYYYY-MM-DD HH24:MI:SS'), 'ry', TO_DATE('2018-03-16 11:33:00', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO sys_menu (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK) VALUES ('1024', '岗位导出', '104', '5', '#', NULL, 'F', '0', 'system:post:export', '#', 'admin', TO_DATE('2018-03-16 11:33:00', 'SYYYY-MM-DD HH24:MI:SS'), 'ry', TO_DATE('2018-03-16 11:33:00', 'SYYYY-MM-DD HH24:MI:SS'), NULL);

-- 初始化-用户和角色关联表数据
insert into sys_user_role values ('1', '1');
insert into sys_user_role values ('100', '2');

-- 初始化-角色和菜单关联表数据
INSERT INTO sys_role_menu (ROLE_ID, MENU_ID) VALUES ('2', '2000');
INSERT INTO sys_role_menu (ROLE_ID, MENU_ID) VALUES ('2', '2001');
INSERT INTO sys_role_menu (ROLE_ID, MENU_ID) VALUES ('2', '2002');

-- 初始化-角色和部门关联表数据
insert into sys_role_dept values ('2', '100');
insert into sys_role_dept values ('2', '101');
insert into sys_role_dept values ('2', '105');

-- 初始化-用户与岗位关联表数据
insert into sys_user_post values ('1', '1');

-- 初始化-字典类型表数据
insert into sys_dict_type values(1,  '用户性别', 'sys_user_sex',        '0', 'admin', TO_DATE('2018-03-16 11-33-00', 'YYYY-MM-DD HH24:MI:SS'), 'ry', TO_DATE('2018-03-16 11-33-00', 'YYYY-MM-DD HH24:MI:SS'), '用户性别列表');
insert into sys_dict_type values(2,  '菜单状态', 'sys_show_hide',       '0', 'admin',TO_DATE('2018-03-16 11-33-00', 'YYYY-MM-DD HH24:MI:SS'), 'ry', TO_DATE('2018-03-16 11-33-00', 'YYYY-MM-DD HH24:MI:SS'), '菜单状态列表');
insert into sys_dict_type values(3,  '系统开关', 'sys_normal_disable',  '0', 'admin', TO_DATE('2018-03-16 11-33-00', 'YYYY-MM-DD HH24:MI:SS'), 'ry',TO_DATE('2018-03-16 11-33-00', 'YYYY-MM-DD HH24:MI:SS'), '系统开关列表');
insert into sys_dict_type values(4,  '任务状态', 'sys_job_status',      '0', 'admin',TO_DATE('2018-03-16 11-33-00', 'YYYY-MM-DD HH24:MI:SS'), 'ry', TO_DATE('2018-03-16 11-33-00', 'YYYY-MM-DD HH24:MI:SS'), '任务状态列表');
insert into sys_dict_type values(5,  '任务分组', 'sys_job_group',       '0', 'admin', TO_DATE('2018-03-16 11-33-00', 'YYYY-MM-DD HH24:MI:SS'), 'ry', TO_DATE('2018-03-16 11-33-00', 'YYYY-MM-DD HH24:MI:SS'), '任务分组列表');
insert into sys_dict_type values(6,  '系统是否', 'sys_yes_no',          '0', 'admin', TO_DATE('2018-03-16 11-33-00', 'YYYY-MM-DD HH24:MI:SS'), 'ry', TO_DATE('2018-03-16 11-33-00', 'YYYY-MM-DD HH24:MI:SS'), '系统是否列表');
insert into sys_dict_type values(7,  '通知类型', 'sys_notice_type',     '0', 'admin',TO_DATE('2018-03-16 11-33-00', 'YYYY-MM-DD HH24:MI:SS'), 'ry', TO_DATE('2018-03-16 11-33-00', 'YYYY-MM-DD HH24:MI:SS'), '通知类型列表');
insert into sys_dict_type values(8,  '通知状态', 'sys_notice_status',   '0', 'admin', TO_DATE('2018-03-16 11-33-00', 'YYYY-MM-DD HH24:MI:SS'), 'ry',TO_DATE('2018-03-16 11-33-00', 'YYYY-MM-DD HH24:MI:SS'), '通知状态列表');
insert into sys_dict_type values(9,  '操作类型', 'sys_oper_type',       '0', 'admin', TO_DATE('2018-03-16 11-33-00', 'YYYY-MM-DD HH24:MI:SS'), 'ry',TO_DATE('2018-03-16 11-33-00', 'YYYY-MM-DD HH24:MI:SS'), '操作类型列表');
insert into sys_dict_type values(10, '系统状态', 'sys_common_status',   '0', 'admin', TO_DATE('2018-03-16 11-33-00', 'YYYY-MM-DD HH24:MI:SS'), 'ry', TO_DATE('2018-03-16 11-33-00', 'YYYY-MM-DD HH24:MI:SS'), '登录状态列表');
INSERT INTO sys_dict_type (DICT_ID, DICT_NAME, DICT_TYPE, STATUS, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK) VALUES (30, '数据提取状态', 'aml_data_sate', '0', 'admin', TO_DATE('2019-10-24 00:32:33', 'SYYYY-MM-DD HH24:MI:SS'), 'admin', TO_DATE('2019-10-24 00:32:57', 'SYYYY-MM-DD HH24:MI:SS'), '数据提取状态列表');
INSERT INTO SYS_DICT_TYPE (DICT_ID, DICT_NAME, DICT_TYPE, STATUS, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK) VALUES (31, '管理机构类型', 'aml_management_type', '0', 'admin', TO_DATE('2019-05-01 01:58:30', 'YYYY-MM-DD HH24:MI:SS'), 'admin', TO_DATE('2019-05-01 01:59:01', 'YYYY-MM-DD HH24:MI:SS'), '管理机构类型列表');

-- 初始化-字典数据表
insert into sys_dict_data values(1,  1,  '男',       '0',       'sys_user_sex',        '',   '',        'Y', '0', 'admin', TO_DATE('2018-03-16 11-33-00', 'YYYY-MM-DD HH24:MI:SS'), 'ry', TO_DATE('2018-03-16 11-33-00', 'YYYY-MM-DD HH24:MI:SS'), '性别男');
insert into sys_dict_data values(2,  2,  '女',       '1',       'sys_user_sex',        '',   '',        'N', '0', 'admin', TO_DATE('2018-03-16 11-33-00', 'YYYY-MM-DD HH24:MI:SS'), 'ry', TO_DATE('2018-03-16 11-33-00', 'YYYY-MM-DD HH24:MI:SS'), '性别女');
insert into sys_dict_data values(3,  3,  '未知',     '2',       'sys_user_sex',        '',   '',        'N', '0', 'admin', TO_DATE('2018-03-16 11-33-00', 'YYYY-MM-DD HH24:MI:SS'), 'ry', TO_DATE('2018-03-16 11-33-00', 'YYYY-MM-DD HH24:MI:SS'), '性别未知');
insert into sys_dict_data values(4,  1,  '显示',     '0',       'sys_show_hide',       '',   'primary', 'Y', '0', 'admin', TO_DATE('2018-03-16 11-33-00', 'YYYY-MM-DD HH24:MI:SS'), 'ry', TO_DATE('2018-03-16 11-33-00', 'YYYY-MM-DD HH24:MI:SS'), '显示菜单');
insert into sys_dict_data values(5,  2,  '隐藏',     '1',       'sys_show_hide',       '',   'danger',  'N', '0', 'admin', TO_DATE('2018-03-16 11-33-00', 'YYYY-MM-DD HH24:MI:SS'), 'ry', TO_DATE('2018-03-16 11-33-00', 'YYYY-MM-DD HH24:MI:SS'), '隐藏菜单');
insert into sys_dict_data values(6,  1,  '正常',     '0',       'sys_normal_disable',  '',   'primary', 'Y', '0', 'admin', TO_DATE('2018-03-16 11-33-00', 'YYYY-MM-DD HH24:MI:SS'), 'ry', TO_DATE('2018-03-16 11-33-00', 'YYYY-MM-DD HH24:MI:SS'), '正常状态');
insert into sys_dict_data values(7,  2,  '停用',     '1',       'sys_normal_disable',  '',   'danger',  'N', '0', 'admin', TO_DATE('2018-03-16 11-33-00', 'YYYY-MM-DD HH24:MI:SS'), 'ry', TO_DATE('2018-03-16 11-33-00', 'YYYY-MM-DD HH24:MI:SS'), '停用状态');
insert into sys_dict_data values(8,  1,  '正常',     '0',       'sys_job_status',      '',   'primary', 'Y', '0', 'admin', TO_DATE('2018-03-16 11-33-00', 'YYYY-MM-DD HH24:MI:SS'), 'ry', TO_DATE('2018-03-16 11-33-00', 'YYYY-MM-DD HH24:MI:SS'), '正常状态');
insert into sys_dict_data values(9,  2,  '暂停',     '1',       'sys_job_status',      '',   'danger',  'N', '0', 'admin', TO_DATE('2018-03-16 11-33-00', 'YYYY-MM-DD HH24:MI:SS'), 'ry', TO_DATE('2018-03-16 11-33-00', 'YYYY-MM-DD HH24:MI:SS'), '停用状态');
insert into sys_dict_data values(10, 1,  '默认',     'DEFAULT', 'sys_job_group',       '',   '',        'Y', '0', 'admin', TO_DATE('2018-03-16 11-33-00', 'YYYY-MM-DD HH24:MI:SS'), 'ry', TO_DATE('2018-03-16 11-33-00', 'YYYY-MM-DD HH24:MI:SS'), '默认分组');
insert into sys_dict_data values(11, 2,  '系统',     'SYSTEM',  'sys_job_group',       '',   '',        'N', '0', 'admin', TO_DATE('2018-03-16 11-33-00', 'YYYY-MM-DD HH24:MI:SS'), 'ry', TO_DATE('2018-03-16 11-33-00', 'YYYY-MM-DD HH24:MI:SS'), '系统分组');
insert into sys_dict_data values(12, 1,  '是',       'Y',       'sys_yes_no',          '',   'primary', 'Y', '0', 'admin', TO_DATE('2018-03-16 11-33-00', 'YYYY-MM-DD HH24:MI:SS'), 'ry', TO_DATE('2018-03-16 11-33-00', 'YYYY-MM-DD HH24:MI:SS'), '系统默认是');
insert into sys_dict_data values(13, 2,  '否',       'N',       'sys_yes_no',          '',   'danger',  'N', '0', 'admin', TO_DATE('2018-03-16 11-33-00', 'YYYY-MM-DD HH24:MI:SS'), 'ry', TO_DATE('2018-03-16 11-33-00', 'YYYY-MM-DD HH24:MI:SS'), '系统默认否');
insert into sys_dict_data values(14, 1,  '通知',     '1',       'sys_notice_type',     '',   'warning', 'Y', '0', 'admin', TO_DATE('2018-03-16 11-33-00', 'YYYY-MM-DD HH24:MI:SS'), 'ry', TO_DATE('2018-03-16 11-33-00', 'YYYY-MM-DD HH24:MI:SS'), '通知');
insert into sys_dict_data values(15, 2,  '公告',     '2',       'sys_notice_type',     '',   'success', 'N', '0', 'admin', TO_DATE('2018-03-16 11-33-00', 'YYYY-MM-DD HH24:MI:SS'), 'ry', TO_DATE('2018-03-16 11-33-00', 'YYYY-MM-DD HH24:MI:SS'), '公告');
insert into sys_dict_data values(16, 1,  '正常',     '0',       'sys_notice_status',   '',   'primary', 'Y', '0', 'admin', TO_DATE('2018-03-16 11-33-00', 'YYYY-MM-DD HH24:MI:SS'), 'ry', TO_DATE('2018-03-16 11-33-00', 'YYYY-MM-DD HH24:MI:SS'), '正常状态');
insert into sys_dict_data values(17, 2,  '关闭',     '1',       'sys_notice_status',   '',   'danger',  'N', '0', 'admin', TO_DATE('2018-03-16 11-33-00', 'YYYY-MM-DD HH24:MI:SS'), 'ry', TO_DATE('2018-03-16 11-33-00', 'YYYY-MM-DD HH24:MI:SS'), '关闭状态');
insert into sys_dict_data values(18, 1,  '新增',     '1',       'sys_oper_type',       '',   'info',    'N', '0', 'admin', TO_DATE('2018-03-16 11-33-00', 'YYYY-MM-DD HH24:MI:SS'), 'ry', TO_DATE('2018-03-16 11-33-00', 'YYYY-MM-DD HH24:MI:SS'), '新增操作');
insert into sys_dict_data values(19, 2,  '修改',     '2',       'sys_oper_type',       '',   'info',    'N', '0', 'admin', TO_DATE('2018-03-16 11-33-00', 'YYYY-MM-DD HH24:MI:SS'), 'ry', TO_DATE('2018-03-16 11-33-00', 'YYYY-MM-DD HH24:MI:SS'), '修改操作');
insert into sys_dict_data values(20, 3,  '删除',     '3',       'sys_oper_type',       '',   'danger',  'N', '0', 'admin', TO_DATE('2018-03-16 11-33-00', 'YYYY-MM-DD HH24:MI:SS'), 'ry', TO_DATE('2018-03-16 11-33-00', 'YYYY-MM-DD HH24:MI:SS'), '删除操作');
insert into sys_dict_data values(21, 4,  '授权',     '4',       'sys_oper_type',       '',   'primary', 'N', '0', 'admin', TO_DATE('2018-03-16 11-33-00', 'YYYY-MM-DD HH24:MI:SS'), 'ry', TO_DATE('2018-03-16 11-33-00', 'YYYY-MM-DD HH24:MI:SS'), '授权操作');
insert into sys_dict_data values(22, 5,  '导出',     '5',       'sys_oper_type',       '',   'warning', 'N', '0', 'admin', TO_DATE('2018-03-16 11-33-00', 'YYYY-MM-DD HH24:MI:SS'), 'ry', TO_DATE('2018-03-16 11-33-00', 'YYYY-MM-DD HH24:MI:SS'), '导出操作');
insert into sys_dict_data values(23, 6,  '导入',     '6',       'sys_oper_type',       '',   'warning', 'N', '0', 'admin', TO_DATE('2018-03-16 11-33-00', 'YYYY-MM-DD HH24:MI:SS'), 'ry', TO_DATE('2018-03-16 11-33-00', 'YYYY-MM-DD HH24:MI:SS'), '导入操作');
insert into sys_dict_data values(24, 7,  '强退',     '7',       'sys_oper_type',       '',   'danger',  'N', '0', 'admin', TO_DATE('2018-03-16 11-33-00', 'YYYY-MM-DD HH24:MI:SS'), 'ry', TO_DATE('2018-03-16 11-33-00', 'YYYY-MM-DD HH24:MI:SS'), '强退操作');
insert into sys_dict_data values(25, 8,  '生成代码', '8',       'sys_oper_type',       '',   'warning', 'N', '0', 'admin', TO_DATE('2018-03-16 11-33-00', 'YYYY-MM-DD HH24:MI:SS'), 'ry', TO_DATE('2018-03-16 11-33-00', 'YYYY-MM-DD HH24:MI:SS'), '生成操作');
insert into sys_dict_data values(26, 9,  '清空数据', '9',       'sys_oper_type',       '',   'danger',  'N', '0', 'admin', TO_DATE('2018-03-16 11-33-00', 'YYYY-MM-DD HH24:MI:SS'), 'ry', TO_DATE('2018-03-16 11-33-00', 'YYYY-MM-DD HH24:MI:SS'), '清空操作');
insert into sys_dict_data values(27, 1,  '成功',     '0',       'sys_common_status',   '',   'primary', 'N', '0', 'admin', TO_DATE('2018-03-16 11-33-00', 'YYYY-MM-DD HH24:MI:SS'), 'ry', TO_DATE('2018-03-16 11-33-00', 'YYYY-MM-DD HH24:MI:SS'), '正常状态');
insert into sys_dict_data values(28, 2,  '失败',     '1',       'sys_common_status',   '',   'danger',  'N', '0', 'admin', TO_DATE('2018-03-16 11-33-00', 'YYYY-MM-DD HH24:MI:SS'), 'ry', TO_DATE('2018-03-16 11-33-00', 'YYYY-MM-DD HH24:MI:SS'), '停用状态');
INSERT INTO sys_dict_data  (DICT_CODE, DICT_SORT, DICT_LABEL, DICT_VALUE, DICT_TYPE, CSS_CLASS, LIST_CLASS, IS_DEFAULT, STATUS, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK) VALUES (50, 2, '执行中', '2', 'aml_data_sate', NULL, 'default', 'Y', '0', 'admin', TO_DATE('2019-10-24 00:34:37', 'SYYYY-MM-DD HH24:MI:SS'), 'admin', TO_DATE('2019-10-24 00:35:35', 'SYYYY-MM-DD HH24:MI:SS'), '数据提取执行中');
INSERT INTO sys_dict_data  (DICT_CODE, DICT_SORT, DICT_LABEL, DICT_VALUE, DICT_TYPE, CSS_CLASS, LIST_CLASS, IS_DEFAULT, STATUS, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK) VALUES (51, 1, '执行完成', '1', 'aml_data_sate', NULL, 'default', 'Y', '0', 'admin', TO_DATE('2019-10-24 00:35:24', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, '数据提取执行完成');
INSERT INTO sys_dict_data  (DICT_CODE, DICT_SORT, DICT_LABEL, DICT_VALUE, DICT_TYPE, CSS_CLASS, LIST_CLASS, IS_DEFAULT, STATUS, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK) VALUES (52, 0, '执行失败', '0', 'aml_data_sate', NULL, 'default', 'Y', '0', 'admin', TO_DATE('2019-10-24 00:36:08', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, '数据提取执行失败');
INSERT INTO SYS_DICT_DATA (DICT_CODE, DICT_SORT, DICT_LABEL, DICT_VALUE, DICT_TYPE, CSS_CLASS, LIST_CLASS, IS_DEFAULT, STATUS, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK) VALUES (53, 0, '所有', '86', 'aml_management_type', null, 'default', 'Y', '0', 'admin', TO_DATE('2019-05-01 02:02:02', 'YYYY-MM-DD HH24:MI:SS'), 'admin', TO_DATE('2019-05-01 02:04:22', 'YYYY-MM-DD HH24:MI:SS'), null);
INSERT INTO SYS_DICT_DATA (DICT_CODE, DICT_SORT, DICT_LABEL, DICT_VALUE, DICT_TYPE, CSS_CLASS, LIST_CLASS, IS_DEFAULT, STATUS, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK) VALUES (54, 2, '分公司', '8631', 'aml_management_type', null, 'default', 'Y', '0', 'admin', TO_DATE('2019-05-01 02:02:51', 'YYYY-MM-DD HH24:MI:SS'), 'admin', TO_DATE('2019-05-01 02:04:12', 'YYYY-MM-DD HH24:MI:SS'), null);
INSERT INTO SYS_DICT_DATA (DICT_CODE, DICT_SORT, DICT_LABEL, DICT_VALUE, DICT_TYPE, CSS_CLASS, LIST_CLASS, IS_DEFAULT, STATUS, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK) VALUES (55, 1, '总公司', '8601', 'aml_management_type', null, 'default', 'Y', '0', 'admin', TO_DATE('2019-05-01 02:02:27', 'YYYY-MM-DD HH24:MI:SS'), 'admin', TO_DATE('2019-05-01 02:04:17', 'YYYY-MM-DD HH24:MI:SS'), null);

-- 初始化参数配置表
insert into sys_config values(1, '主框架页-默认皮肤样式名称', 'sys.index.skinName',     'skin-blue',     'Y', 'admin', TO_DATE('2018-03-16 11-33-00', 'YYYY-MM-DD HH24:MI:SS'), 'ry', TO_DATE('2018-03-16 11-33-00', 'YYYY-MM-DD HH24:MI:SS'), '蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow' );
insert into sys_config values(2, '用户管理-账号初始密码',     'sys.user.initPassword',  '123456',        'Y', 'admin', TO_DATE('2018-03-16 11-33-00', 'YYYY-MM-DD HH24:MI:SS'), 'ry', TO_DATE('2018-03-16 11-33-00', 'YYYY-MM-DD HH24:MI:SS'), '初始化密码 123456' );
insert into sys_config values(3, '主框架页-侧边栏主题',       'sys.index.sideTheme',    'theme-dark',    'Y', 'admin', TO_DATE('2018-03-16 11-33-00', 'YYYY-MM-DD HH24:MI:SS'), 'ry', TO_DATE('2018-03-16 11-33-00', 'YYYY-MM-DD HH24:MI:SS'), '深色主题theme-dark，浅色主题theme-light' );