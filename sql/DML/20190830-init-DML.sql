-- ----------------------------
-- 1、部门表
-- ----------------------------
create sequence seq_sys_dept
 increment by 1
 start with 200
 nomaxvalue
 nominvalue
 cache 20;

create table sys_dept (
  dept_id 			number(20)  		    not null,
  parent_id 		number	(20)	    default 0,
  ancestors 		varchar2(50)    default '',
  dept_name 		varchar2(30) 	default '',
  order_num 		number(4)          default 0,
  leader            varchar2(20)    default null,
  phone             varchar2(11)    default null,
  email             varchar2(50)    default null,
  status 			char(1) 		default '0',
  del_flag			char(1) 		default '0',
  create_by         varchar2(64)    default '',
  create_time 	    date,
  update_by         varchar2(64)    default '',
  update_time       date
);

alter table sys_dept add constraint pk_sys_dept primary key (dept_id);

comment on table  sys_dept              is '部门信息表';
comment on column sys_dept.dept_id      is '部门主键seq_sys_dept.nextval';
comment on column sys_dept.parent_id    is '父部门id';
comment on column sys_dept.ancestors    is '祖级列表';
comment on column sys_dept.dept_name    is '部门名称';
comment on column sys_dept.order_num    is '显示顺序';
comment on column sys_dept.leader       is '负责人';
comment on column sys_dept.phone        is '联系电话';
comment on column sys_dept.email        is '邮箱';
comment on column sys_dept.status       is '部门状态（0正常 1停用）';
comment on column sys_dept.del_flag     is '删除标志（0代表存在 2代表删除）';
comment on column sys_dept.create_by    is '创建者';
comment on column sys_dept.create_time  is '创建时间';
comment on column sys_dept.update_by    is '更新者';
comment on column sys_dept.update_time  is '更新时间';

INSERT INTO sys_dept (DEPT_ID, PARENT_ID, ANCESTORS, DEPT_NAME, ORDER_NUM, LEADER, PHONE, EMAIL, STATUS, DEL_FLAG, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME) VALUES ('100', '0', '0', '上海人寿保险股份有限公司', '0', '管理员', '15888888888', '111@qq.com', '0', '0', 'admin', TO_DATE('2018-03-16 11:33:00', 'SYYYY-MM-DD HH24:MI:SS'), 'admin', TO_DATE('2019-09-11 01:19:03', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO sys_dept (DEPT_ID, PARENT_ID, ANCESTORS, DEPT_NAME, ORDER_NUM, LEADER, PHONE, EMAIL, STATUS, DEL_FLAG, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME) VALUES ('101', '100', '0,100', '总公司', '1', '管理员', '15888888888', '33333333333333@qq.com', '1', '0', 'admin', TO_DATE('2018-03-16 11:33:00', 'SYYYY-MM-DD HH24:MI:SS'), 'admin', TO_DATE('2019-09-11 01:39:26', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO sys_dept (DEPT_ID, PARENT_ID, ANCESTORS, DEPT_NAME, ORDER_NUM, LEADER, PHONE, EMAIL, STATUS, DEL_FLAG, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME) VALUES ('103', '101', '0,100,101', '信息技术部', '1', '管理员', '15888888888', '11@qq.com', '0', '0', 'admin', TO_DATE('2018-03-16 11:33:00', 'SYYYY-MM-DD HH24:MI:SS'), 'admin', TO_DATE('2019-10-05 00:05:26', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO sys_dept (DEPT_ID, PARENT_ID, ANCESTORS, DEPT_NAME, ORDER_NUM, LEADER, PHONE, EMAIL, STATUS, DEL_FLAG, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME) VALUES ('104', '101', '0,100,101', '法律合规部', '2', '管理员', '15888888888', '11@qq.com', '1', '0', 'admin', TO_DATE('2018-03-16 11:33:00', 'SYYYY-MM-DD HH24:MI:SS'), 'admin', TO_DATE('2026-09-12 00:08:47', 'SYYYY-MM-DD HH24:MI:SS'));
-- ----------------------------
-- 2、用户信息表
-- ----------------------------
create sequence seq_sys_user
 increment by 1
 start with 100
 nomaxvalue
 nominvalue
 cache 20;

create table sys_user (
  user_id 			number(20) 		    not null,
  dept_id 			number(20) 		    default null,
  login_name 		varchar2(30) 	not null,
  user_name 		varchar2(30) 	not null,
  user_type 		varchar2(2) 	default '00',
  email  			varchar2(50) 	default '',
  phonenumber  		varchar2(11) 	default '',
  sex  		        char(1) 	    default '0',
  avatar            varchar2(100) 	default '',
  password 			varchar2(50) 	default '',
  salt 				varchar2(20) 	default '',
  status 			char(1) 		default '0',
  del_flag			char(1) 		default '0',
  login_ip          varchar2(50)    default '',
  login_date        date,
  create_by         varchar2(64),
  create_time 	    date,
  update_by         varchar2(64)    default '',
  update_time       date,
  remark 		    varchar2(500) 	default ''
);

alter table sys_user add constraint pk_sys_user primary key (user_id);

comment on table  sys_user              is '用户信息表';
comment on column sys_user.user_id      is '用户主键seq_sys_user.nextval';
comment on column sys_user.dept_id      is '部门ID';
comment on column sys_user.login_name   is '登录账号';
comment on column sys_user.user_name    is '用户昵称';
comment on column sys_user.user_type    is '用户类型（00系统用户）';
comment on column sys_user.email        is '用户邮箱';
comment on column sys_user.phonenumber  is '手机号码';
comment on column sys_user.sex          is '用户性别（0男 1女 2未知）';
comment on column sys_user.avatar       is '头像路径';
comment on column sys_user.password     is '密码';
comment on column sys_user.salt         is '盐加密';
comment on column sys_user.status       is '帐号状态（0正常 1停用）';
comment on column sys_user.del_flag     is '删除标志（0代表存在 2代表删除）';
comment on column sys_user.login_ip     is '最后登陆IP';
comment on column sys_user.login_date   is '最后登陆时间';
comment on column sys_user.create_by    is '创建者';
comment on column sys_user.create_time  is '创建时间';
comment on column sys_user.update_by    is '更新者';
comment on column sys_user.update_time  is '更新时间';
comment on column sys_user.remark       is '备注';

insert into sys_user values(1,  103, 'admin', 'aml', '00', 'ry@163.com', '15888888888', '1', '', '29c67a30398638269fe600f73a054934', '111111', '0', '0', '127.0.0.1', TO_DATE('2018-03-16 11-33-00', 'YYYY-MM-DD HH24:MI:SS'), 'admin', TO_DATE('2018-03-16 11-33-00', 'YYYY-MM-DD HH24:MI:SS'), 'ry', TO_DATE('2018-03-16 11-33-00', 'YYYY-MM-DD HH24:MI:SS'), '管理员');
insert into sys_user values(2,  105, 'ry',    'aml', '00', 'ry@qq.com',  '15666666666', '1', '', '8e6d98b90472783cc73c17047ddccf36', '222222', '0', '0', '127.0.0.1', TO_DATE('2018-03-16 11-33-00', 'YYYY-MM-DD HH24:MI:SS'), 'admin', TO_DATE('2018-03-16 11-33-00', 'YYYY-MM-DD HH24:MI:SS'), 'ry', TO_DATE('2018-03-16 11-33-00', 'YYYY-MM-DD HH24:MI:SS'), '测试员');

-- ----------------------------
-- 3、岗位信息表
-- ----------------------------
create sequence seq_sys_post
 increment by 1
 start with 10
 nomaxvalue
 nominvalue
 cache 20;

create table sys_post
(
  post_id 			number(20) 		    not null,
  post_code         varchar2(64)    not null,
  post_name         varchar2(50)    not null,
  post_sort         number(4)          not null,
  status            char(1)         not null,
  create_by         varchar2(64)    default '',
  create_time       date,
  update_by         varchar2(64) 	default '',
  update_time       date,
  remark 		    varchar2(500)
);

alter table sys_post add constraint pk_sys_post primary key (post_id);

comment on table  sys_post              is '岗位信息表';
comment on column sys_post.post_id      is '岗位主键seq_sys_post.nextval';
comment on column sys_post.post_code    is '岗位编码';
comment on column sys_post.post_name    is '岗位名称';
comment on column sys_post.post_sort    is '显示顺序';
comment on column sys_post.status       is '状态（0正常 1停用）';
comment on column sys_post.create_by    is '创建者';
comment on column sys_post.create_time  is '创建时间';
comment on column sys_post.update_by    is '更新者';
comment on column sys_post.update_time  is '更新时间';
comment on column sys_post.remark       is '备注';

-- ----------------------------
-- 初始化-岗位信息表数据
-- ----------------------------
insert into sys_post values(1, 'ceo',  '董事长',    1, '0', 'admin', TO_DATE('2018-03-16 11-33-00', 'YYYY-MM-DD HH24:MI:SS'), 'ry', TO_DATE('2018-03-16 11-33-00', 'YYYY-MM-DD HH24:MI:SS'), '');
insert into sys_post values(2, 'se',   '项目经理',  2, '0', 'admin', TO_DATE('2018-03-16 11-33-00', 'YYYY-MM-DD HH24:MI:SS'), 'ry', TO_DATE('2018-03-16 11-33-00', 'YYYY-MM-DD HH24:MI:SS'), '');
insert into sys_post values(3, 'hr',   '人力资源',  3, '0', 'admin', TO_DATE('2018-03-16 11-33-00', 'YYYY-MM-DD HH24:MI:SS'), 'ry', TO_DATE('2018-03-16 11-33-00', 'YYYY-MM-DD HH24:MI:SS'), '');
insert into sys_post values(4, 'user', '普通员工',  4, '0', 'admin', TO_DATE('2018-03-16 11-33-00', 'YYYY-MM-DD HH24:MI:SS'), 'ry', TO_DATE('2018-03-16 11-33-00', 'YYYY-MM-DD HH24:MI:SS'), '');

-- ----------------------------
-- 4、角色信息表
-- ----------------------------
create sequence seq_sys_role
 increment by 1
 start with 100
 nomaxvalue
 nominvalue
 cache 20;

create table sys_role (
  role_id 			number(20)          not null,
  role_name 		varchar2(30) 	not null,
  role_key 		    varchar2(100) 	not null,
  role_sort         number(4)          not null,
  data_scope        char(1) 	    default '1',
  status 			char(1) 		not null,
  del_flag			char(1) 		default '0',
  create_by         varchar2(64)    default '',
  create_time 		date,
  update_by 		varchar2(64) 	default '',
  update_time 		date,
  remark 			varchar2(500) 	default null
);

alter table sys_role add constraint pk_sys_role primary key (role_id);

comment on table  sys_role              is '角色信息表';
comment on column sys_role.role_id      is '角色主键seq_sys_post.nextval';
comment on column sys_role.role_name    is '角色名称';
comment on column sys_role.role_key     is '角色权限字符串';
comment on column sys_role.role_sort    is '显示顺序';
comment on column sys_role.data_scope   is '数据范围（1：全部数据权限 2：自定数据权限）';
comment on column sys_role.status       is '角色状态（0正常 1停用）';
comment on column sys_role.del_flag     is '删除标志（0代表存在 2代表删除）';
comment on column sys_role.create_by    is '创建者';
comment on column sys_role.create_time  is '创建时间';
comment on column sys_role.update_by    is '更新者';
comment on column sys_role.update_time  is '更新时间';
comment on column sys_role.remark       is '备注';

-- ----------------------------
-- 初始化-角色信息表数据
-- ----------------------------
insert into sys_role values('1', '管理员',   'admin',  1, 1, '0', '0', 'admin', TO_DATE('2018-03-16 11-33-00', 'YYYY-MM-DD HH24:MI:SS'), 'ry', TO_DATE('2018-03-16 11-33-00', 'YYYY-MM-DD HH24:MI:SS'), '管理员');
insert into sys_role values('2', '普通角色', 'common', 2, 2, '0', '0', 'admin', TO_DATE('2018-03-16 11-33-00', 'YYYY-MM-DD HH24:MI:SS'), 'ry', TO_DATE('2018-03-16 11-33-00', 'YYYY-MM-DD HH24:MI:SS'), '普通角色');


-- ----------------------------
-- 5、菜单权限表
-- ----------------------------
create sequence seq_sys_menu
 increment by 1
 start with 2000
 nomaxvalue
 nominvalue
 cache 20;

create table sys_menu (
  menu_id 			number(20)		    not null,
  menu_name 		varchar2(50) 	not null,
  parent_id 		number(20)          default 0,
  order_num 		number(4)          default 0,
  url 				varchar2(200) 	default '#',
  target            varchar2(20)     default '',
  menu_type 		char(1) 		default '',
  visible 			char(1) 		default 0,
  perms 			varchar2(100) 	default null,
  icon 				varchar2(100) 	default '#',
  create_by         varchar2(64)    default '',
  create_time 		date,
  update_by 		varchar2(64) 	default '',
  update_time 		date ,
  remark 			varchar2(500) 	default ''
);

alter table sys_menu add constraint pk_sys_menu primary key (menu_id);

comment on table  sys_menu              is '菜单权限表';
comment on column sys_menu.menu_id      is '菜单主键seq_sys_post.nextval';
comment on column sys_menu.menu_name    is '菜单名称';
comment on column sys_menu.parent_id    is '父菜单ID';
comment on column sys_menu.order_num    is '显示顺序';
comment on column sys_menu.url          is '请求地址';
comment on column sys_menu.target       is '打开方式（menuItem页签 menuBlank新窗口）';
comment on column sys_menu.menu_type    is '菜单类型（M目录 C菜单 F按钮）';
comment on column sys_menu.visible      is '菜单状态（0显示 1隐藏）';
comment on column sys_menu.perms        is '权限标识';
comment on column sys_menu.icon         is '菜单图标';
comment on column sys_menu.create_by    is '创建者';
comment on column sys_menu.create_time  is '创建时间';
comment on column sys_menu.update_by    is '更新者';
comment on column sys_menu.update_time  is '更新时间';
comment on column sys_menu.remark       is '备注';

-- 初始化菜单
INSERT INTO sys_menu (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK) VALUES ('1', '系统管理', '0', '1', '#', NULL, 'M', '0', NULL, 'fa fa-gear', 'admin', TO_DATE('2018-03-16 11:33:00', 'SYYYY-MM-DD HH24:MI:SS'), 'ry', TO_DATE('2018-03-16 11:33:00', 'SYYYY-MM-DD HH24:MI:SS'), '系统管理目录');
INSERT INTO sys_menu (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK) VALUES ('100', '用户管理', '1', '1', '/system/user', NULL, 'C', '0', 'system:user:view', '#', 'admin', TO_DATE('2018-03-16 11:33:00', 'SYYYY-MM-DD HH24:MI:SS'), 'ry', TO_DATE('2018-03-16 11:33:00', 'SYYYY-MM-DD HH24:MI:SS'), '用户管理菜单');
INSERT INTO sys_menu (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK) VALUES ('101', '角色管理', '1', '2', '/system/role', NULL, 'C', '0', 'system:role:view', '#', 'admin', TO_DATE('2018-03-16 11:33:00', 'SYYYY-MM-DD HH24:MI:SS'), 'ry', TO_DATE('2018-03-16 11:33:00', 'SYYYY-MM-DD HH24:MI:SS'), '角色管理菜单');
INSERT INTO sys_menu (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK) VALUES ('102', '菜单管理', '1', '3', '/system/menu', NULL, 'C', '0', 'system:menu:view', '#', 'admin', TO_DATE('2018-03-16 11:33:00', 'SYYYY-MM-DD HH24:MI:SS'), 'ry', TO_DATE('2018-03-16 11:33:00', 'SYYYY-MM-DD HH24:MI:SS'), '菜单管理菜单');
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
INSERT INTO sys_menu (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK) VALUES ('1012', '菜单查询', '102', '1', '#', NULL, 'F', '0', 'system:menu:list', '#', 'admin', TO_DATE('2018-03-16 11:33:00', 'SYYYY-MM-DD HH24:MI:SS'), 'ry', TO_DATE('2018-03-16 11:33:00', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO sys_menu (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK) VALUES ('1013', '菜单新增', '102', '2', '#', NULL, 'F', '0', 'system:menu:add', '#', 'admin', TO_DATE('2018-03-16 11:33:00', 'SYYYY-MM-DD HH24:MI:SS'), 'ry', TO_DATE('2018-03-16 11:33:00', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO sys_menu (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK) VALUES ('1014', '菜单修改', '102', '3', '#', NULL, 'F', '0', 'system:menu:edit', '#', 'admin', TO_DATE('2018-03-16 11:33:00', 'SYYYY-MM-DD HH24:MI:SS'), 'ry', TO_DATE('2018-03-16 11:33:00', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO sys_menu (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK) VALUES ('1015', '菜单删除', '102', '4', '#', NULL, 'F', '0', 'system:menu:remove', '#', 'admin', TO_DATE('2018-03-16 11:33:00', 'SYYYY-MM-DD HH24:MI:SS'), 'ry', TO_DATE('2018-03-16 11:33:00', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO sys_menu (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK) VALUES ('1016', '部门查询', '103', '1', '#', NULL, 'F', '0', 'system:dept:list', '#', 'admin', TO_DATE('2018-03-16 11:33:00', 'SYYYY-MM-DD HH24:MI:SS'), 'ry', TO_DATE('2018-03-16 11:33:00', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO sys_menu (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK) VALUES ('1017', '部门新增', '103', '2', '#', NULL, 'F', '0', 'system:dept:add', '#', 'admin', TO_DATE('2018-03-16 11:33:00', 'SYYYY-MM-DD HH24:MI:SS'), 'ry', TO_DATE('2018-03-16 11:33:00', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO sys_menu (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK) VALUES ('1018', '部门修改', '103', '3', '#', NULL, 'F', '0', 'system:dept:edit', '#', 'admin', TO_DATE('2018-03-16 11:33:00', 'SYYYY-MM-DD HH24:MI:SS'), 'ry', TO_DATE('2018-03-16 11:33:00', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO sys_menu (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK) VALUES ('1019', '部门删除', '103', '4', '#', NULL, 'F', '0', 'system:dept:remove', '#', 'admin', TO_DATE('2018-03-16 11:33:00', 'SYYYY-MM-DD HH24:MI:SS'), 'ry', TO_DATE('2018-03-16 11:33:00', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO sys_menu (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK) VALUES ('1020', '岗位查询', '104', '1', '#', NULL, 'F', '0', 'system:post:list', '#', 'admin', TO_DATE('2018-03-16 11:33:00', 'SYYYY-MM-DD HH24:MI:SS'), 'ry', TO_DATE('2018-03-16 11:33:00', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO sys_menu (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK) VALUES ('1021', '岗位新增', '104', '2', '#', NULL, 'F', '0', 'system:post:add', '#', 'admin', TO_DATE('2018-03-16 11:33:00', 'SYYYY-MM-DD HH24:MI:SS'), 'ry', TO_DATE('2018-03-16 11:33:00', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO sys_menu (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK) VALUES ('1022', '岗位修改', '104', '3', '#', NULL, 'F', '0', 'system:post:edit', '#', 'admin', TO_DATE('2018-03-16 11:33:00', 'SYYYY-MM-DD HH24:MI:SS'), 'ry', TO_DATE('2018-03-16 11:33:00', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO sys_menu (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK) VALUES ('1023', '岗位删除', '104', '4', '#', NULL, 'F', '0', 'system:post:remove', '#', 'admin', TO_DATE('2018-03-16 11:33:00', 'SYYYY-MM-DD HH24:MI:SS'), 'ry', TO_DATE('2018-03-16 11:33:00', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO sys_menu (MENU_ID, MENU_NAME, PARENT_ID, ORDER_NUM, URL, TARGET, MENU_TYPE, VISIBLE, PERMS, ICON, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK) VALUES ('1024', '岗位导出', '104', '5', '#', NULL, 'F', '0', 'system:post:export', '#', 'admin', TO_DATE('2018-03-16 11:33:00', 'SYYYY-MM-DD HH24:MI:SS'), 'ry', TO_DATE('2018-03-16 11:33:00', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
-- ----------------------------
-- 6、用户和角色关联表  用户N-1角色
-- ----------------------------
create table sys_user_role (
  user_id 	number(20)  not null,
  role_id 	number(20)  not null
);

alter table sys_user_role add constraint pk_sys_user_role primary key (user_id, role_id);

comment on table  sys_user_role              is '用户和角色关联表';
comment on column sys_user_role.user_id      is '用户ID';
comment on column sys_user_role.role_id      is '角色ID';

-- ----------------------------
-- 初始化-用户和角色关联表数据
-- ----------------------------
insert into sys_user_role values ('1', '1');
insert into sys_user_role values ('2', '2');

-- ----------------------------
-- 7、角色和菜单关联表  角色1-N菜单
-- ----------------------------
create table sys_role_menu (
  role_id 	number(20)  not null,
  menu_id 	number(20)  not null
);

alter table sys_role_menu add constraint pk_sys_role_menu primary key (role_id, menu_id);

comment on table  sys_role_menu              is '角色和菜单关联表';
comment on column sys_role_menu.role_id      is '角色ID';
comment on column sys_role_menu.menu_id      is '菜单ID';

-- 初始化-角色和菜单关联表数据
insert into sys_role_menu values ('2', '1');
insert into sys_role_menu values ('2', '2');
insert into sys_role_menu values ('2', '3');
insert into sys_role_menu values ('2', '100');
insert into sys_role_menu values ('2', '101');
insert into sys_role_menu values ('2', '102');
insert into sys_role_menu values ('2', '103');
insert into sys_role_menu values ('2', '104');
insert into sys_role_menu values ('2', '105');
insert into sys_role_menu values ('2', '106');
insert into sys_role_menu values ('2', '107');
insert into sys_role_menu values ('2', '108');
insert into sys_role_menu values ('2', '109');
insert into sys_role_menu values ('2', '110');
insert into sys_role_menu values ('2', '111');
insert into sys_role_menu values ('2', '112');
insert into sys_role_menu values ('2', '113');
insert into sys_role_menu values ('2', '114');
insert into sys_role_menu values ('2', '115');
insert into sys_role_menu values ('2', '500');
insert into sys_role_menu values ('2', '501');
insert into sys_role_menu values ('2', '1000');
insert into sys_role_menu values ('2', '1001');
insert into sys_role_menu values ('2', '1002');
insert into sys_role_menu values ('2', '1003');
insert into sys_role_menu values ('2', '1004');
insert into sys_role_menu values ('2', '1005');
insert into sys_role_menu values ('2', '1006');
insert into sys_role_menu values ('2', '1007');
insert into sys_role_menu values ('2', '1008');
insert into sys_role_menu values ('2', '1009');
insert into sys_role_menu values ('2', '1010');
insert into sys_role_menu values ('2', '1011');
insert into sys_role_menu values ('2', '1012');
insert into sys_role_menu values ('2', '1013');
insert into sys_role_menu values ('2', '1014');
insert into sys_role_menu values ('2', '1015');
insert into sys_role_menu values ('2', '1016');
insert into sys_role_menu values ('2', '1017');
insert into sys_role_menu values ('2', '1018');
insert into sys_role_menu values ('2', '1019');
insert into sys_role_menu values ('2', '1020');
insert into sys_role_menu values ('2', '1021');
insert into sys_role_menu values ('2', '1022');
insert into sys_role_menu values ('2', '1023');
insert into sys_role_menu values ('2', '1024');
insert into sys_role_menu values ('2', '1025');
insert into sys_role_menu values ('2', '1026');
insert into sys_role_menu values ('2', '1027');
insert into sys_role_menu values ('2', '1028');
insert into sys_role_menu values ('2', '1029');
insert into sys_role_menu values ('2', '1030');
insert into sys_role_menu values ('2', '1031');
insert into sys_role_menu values ('2', '1032');
insert into sys_role_menu values ('2', '1033');
insert into sys_role_menu values ('2', '1034');
insert into sys_role_menu values ('2', '1035');
insert into sys_role_menu values ('2', '1036');
insert into sys_role_menu values ('2', '1037');
insert into sys_role_menu values ('2', '1038');
insert into sys_role_menu values ('2', '1039');
insert into sys_role_menu values ('2', '1040');
insert into sys_role_menu values ('2', '1041');
insert into sys_role_menu values ('2', '1042');
insert into sys_role_menu values ('2', '1043');
insert into sys_role_menu values ('2', '1044');
insert into sys_role_menu values ('2', '1045');
insert into sys_role_menu values ('2', '1046');
insert into sys_role_menu values ('2', '1047');
insert into sys_role_menu values ('2', '1048');
insert into sys_role_menu values ('2', '1049');
insert into sys_role_menu values ('2', '1050');
insert into sys_role_menu values ('2', '1051');
insert into sys_role_menu values ('2', '1052');
insert into sys_role_menu values ('2', '1053');
insert into sys_role_menu values ('2', '1054');
insert into sys_role_menu values ('2', '1055');
insert into sys_role_menu values ('2', '1056');
insert into sys_role_menu values ('2', '1057');
insert into sys_role_menu values ('2', '1058');
insert into sys_role_menu values ('2', '1059');
insert into sys_role_menu values ('2', '1060');

-- ----------------------------
-- 8、角色和部门关联表  角色1-N部门
-- ----------------------------
create table sys_role_dept (
  role_id 	number(20)  not null,
  dept_id 	number(20)  not null
);

alter table sys_role_dept add constraint pk_sys_role_dept primary key (role_id, dept_id);

comment on table  sys_role_dept              is '角色和部门关联表';
comment on column sys_role_dept.role_id      is '角色ID';
comment on column sys_role_dept.dept_id      is '部门ID';

insert into sys_role_dept values ('2', '100');
insert into sys_role_dept values ('2', '101');
insert into sys_role_dept values ('2', '105');


-- ----------------------------
-- 9、用户与岗位关联表  用户1-N岗位
-- ----------------------------
create table sys_user_post
(
	user_id number(20)  not null,
	post_id number(20)  not null
);

alter table sys_user_post add constraint pk_sys_user_post primary key (user_id, post_id);

comment on table  sys_user_post              is '用户与岗位关联表';
comment on column sys_user_post.user_id      is '用户ID';
comment on column sys_user_post.post_id      is '岗位ID';

insert into sys_user_post values ('1', '1');
insert into sys_user_post values ('2', '2');

-- ----------------------------
-- 10、操作日志记录
-- ----------------------------
create sequence seq_sys_oper_log
 increment by 1
 start with 100
 nomaxvalue
 nominvalue
 cache 20;

create table sys_oper_log (
  oper_id 			number(20)          not null ,
  title             varchar2(50)    default '',
  business_type     number(2)          default 0,
  method            varchar2(100)   default '',
  request_method    varchar(10)     default '',
  operator_type     number(1)          default 0,
  oper_name 	    varchar2(50)    default '',
  dept_name 		varchar2(50)    default '',
  oper_url 		    varchar2(255) 	default '',
  oper_ip 			varchar2(50) 	default '',
  oper_location     varchar2(255)   default '',
  oper_param 		varchar2(2000) 	default '',
  status 			number(1) 		    default 0,
  error_msg 		varchar2(2000) 	default '' ,
  oper_time 		date
);

alter table sys_oper_log add constraint pk_sys_oper_log primary key (oper_id);

comment on table  sys_oper_log               is '操作日志记录';
comment on column sys_oper_log.oper_id       is '日志主键seq_sys_oper_log.nextval';
comment on column sys_oper_log.title         is '模块标题';
comment on column sys_oper_log.business_type is '业务类型（0其它 1新增 2修改 3删除）';
comment on column sys_oper_log.method        is '方法名称';
comment on column sys_oper_log.request_method is '请求方式';
comment on column sys_oper_log.operator_type is '操作类别（0其它 1后台用户 2手机端用户）';
comment on column sys_oper_log.oper_name     is '操作人员';
comment on column sys_oper_log.dept_name     is '部门名称';
comment on column sys_oper_log.oper_url      is '请求URL';
comment on column sys_oper_log.oper_ip       is '主机地址';
comment on column sys_oper_log.oper_location is '操作地点';
comment on column sys_oper_log.oper_param    is '请求参数';
comment on column sys_oper_log.status        is '操作状态（0正常 1异常）';
comment on column sys_oper_log.error_msg     is '错误消息';
comment on column sys_oper_log.oper_time     is '操作时间';


-- ----------------------------
-- 11、字典类型表
-- ----------------------------
create sequence seq_sys_dict_type
 increment by 1
 start with 100
 nomaxvalue
 nominvalue
 cache 20;

create table sys_dict_type
(
	dict_id          number(20)          not null,
	dict_name        varchar2(100)   default '',
	dict_type        varchar2(100)   default '',
  status 			 char(1) 		 default '0',
  create_by        varchar2(64)    default '',
  create_time      date,
  update_by        varchar2(64) 	 default '',
	update_time      date,
  remark 	         varchar2(500) 	 default null
);

alter table sys_dict_type add constraint pk_sys_dict_type primary key (dict_id);
create unique index sys_dict_type_index1 on sys_dict_type (dict_type);

comment on table  sys_dict_type               is '字典类型表';
comment on column sys_dict_type.dict_id       is '字典主键seq_sys_dict_type.nextval';
comment on column sys_dict_type.dict_name     is '字典名称';
comment on column sys_dict_type.dict_type     is '字典类型';
comment on column sys_dict_type.status        is '状态（0正常 1停用）';
comment on column sys_dict_type.create_by     is '创建者';
comment on column sys_dict_type.create_time   is '创建时间';
comment on column sys_dict_type.update_by     is '更新者';
comment on column sys_dict_type.update_time   is '更新时间';
comment on column sys_dict_type.remark        is '备注';

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

-- ----------------------------
-- 12、字典数据表
-- ----------------------------
create sequence seq_sys_dict_data
 increment by 1
 start with 100
 nomaxvalue
 nominvalue
 cache 20;

create table sys_dict_data
(
	dict_code        number(20)          not null,
	dict_sort        number(4)          default 0,
	dict_label       varchar2(100)   default '',
	dict_value       varchar2(100)   default '',
	dict_type        varchar2(100)   default '',
	css_class        varchar2(100)   default null,
	list_class       varchar2(100)   default null,
	is_default       char(1)         default 'N',
    status 			 char(1) 		 default '0',
    create_by        varchar2(64)    default '',
    create_time      date,
    update_by        varchar2(64) 	 default '',
	update_time      date,
    remark 	         varchar2(500) 	 default null
);

alter table sys_dict_data add constraint pk_sys_dict_data primary key (dict_code);

comment on table  sys_dict_data               is '字典数据表';
comment on column sys_dict_data.dict_code     is '字典主键seq_sys_dict_data.nextval';
comment on column sys_dict_data.dict_sort     is '字典排序';
comment on column sys_dict_data.dict_label    is '字典标签';
comment on column sys_dict_data.dict_value    is '字典键值';
comment on column sys_dict_data.dict_type     is '字典类型';
comment on column sys_dict_data.css_class     is '样式属性（其他样式扩展）';
comment on column sys_dict_data.list_class    is '表格回显样式';
comment on column sys_dict_data.is_default    is '是否默认（Y是 N否）';
comment on column sys_dict_data.status        is '状态（0正常 1停用）';
comment on column sys_dict_data.create_by     is '创建者';
comment on column sys_dict_data.create_time   is '创建时间';
comment on column sys_dict_data.update_by     is '更新者';
comment on column sys_dict_data.update_time   is '更新时间';
comment on column sys_dict_data.remark        is '备注';

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

INSERT INTO sys_dict_data (DICT_CODE, DICT_SORT, DICT_LABEL, DICT_VALUE, DICT_TYPE, CSS_CLASS, LIST_CLASS, IS_DEFAULT, STATUS, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK) VALUES ('100', '2', '执行中', '2', 'aml_data_sate', NULL, 'default', 'Y', '0', 'admin', TO_DATE('2019-10-24 00:34:37', 'SYYYY-MM-DD HH24:MI:SS'), 'admin', TO_DATE('2019-10-24 00:35:35', 'SYYYY-MM-DD HH24:MI:SS'), '数据提取执行中');
INSERT INTO sys_dict_data (DICT_CODE, DICT_SORT, DICT_LABEL, DICT_VALUE, DICT_TYPE, CSS_CLASS, LIST_CLASS, IS_DEFAULT, STATUS, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK) VALUES ('101', '1', '执行完成', '1', 'aml_data_sate', NULL, 'default', 'Y', '0', 'admin', TO_DATE('2019-10-24 00:35:24', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, '数据提取执行完成');
INSERT INTO sys_dict_data (DICT_CODE, DICT_SORT, DICT_LABEL, DICT_VALUE, DICT_TYPE, CSS_CLASS, LIST_CLASS, IS_DEFAULT, STATUS, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK) VALUES ('102', '0', '执行失败', '0', 'aml_data_sate', NULL, 'default', 'Y', '0', 'admin', TO_DATE('2019-10-24 00:36:08', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, '数据提取执行失败');
INSERT INTO sys_dict_data (DICT_CODE, DICT_SORT, DICT_LABEL, DICT_VALUE, DICT_TYPE, CSS_CLASS, LIST_CLASS, IS_DEFAULT, STATUS, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK) VALUES ('120', '0', '所有', '86', 'aml_management_type', NULL, 'default', 'Y', '0', 'admin', TO_DATE('2019-05-01 02:02:02', 'SYYYY-MM-DD HH24:MI:SS'), 'admin', TO_DATE('2019-05-01 02:04:22', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO sys_dict_data (DICT_CODE, DICT_SORT, DICT_LABEL, DICT_VALUE, DICT_TYPE, CSS_CLASS, LIST_CLASS, IS_DEFAULT, STATUS, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK) VALUES ('123', '1', '总公司', '8601', 'aml_management_type', NULL, 'default', 'Y', '0', 'admin', TO_DATE('2019-05-01 02:02:02', 'SYYYY-MM-DD HH24:MI:SS'), 'admin', TO_DATE('2019-05-01 02:04:22', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO sys_dict_data (DICT_CODE, DICT_SORT, DICT_LABEL, DICT_VALUE, DICT_TYPE, CSS_CLASS, LIST_CLASS, IS_DEFAULT, STATUS, CREATE_BY, CREATE_TIME, UPDATE_BY, UPDATE_TIME, REMARK) VALUES ('122', '2', '分公司', '8631', 'aml_management_type', NULL, 'default', 'Y', '0', 'admin', TO_DATE('2019-05-01 02:02:51', 'SYYYY-MM-DD HH24:MI:SS'), 'admin', TO_DATE('2019-05-01 02:04:12', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
-- ----------------------------
-- 13、参数配置表
-- ----------------------------
create sequence seq_sys_config
 increment by 1
 start with 100
 nomaxvalue
 nominvalue
 cache 20;

create table sys_config (
	config_id 		   number(20)        not null,
	config_name        varchar2(100) default '',
	config_key         varchar2(100) default '',
	config_value       varchar2(100) default '',
	config_type        char(1)       default 'N',
    create_by          varchar2(64)  default '',
    create_time 	   date,
    update_by          varchar2(64)  default '',
    update_time        date,
	remark 	           varchar2(500)  default null
);
alter table sys_config add constraint pk_sys_config primary key (config_id);

comment on table  sys_config               is '参数配置表';
comment on column sys_config.config_id     is '参数主键seq_sys_config.nextval';
comment on column sys_config.config_name   is '参数名称';
comment on column sys_config.config_key    is '参数键名';
comment on column sys_config.config_value  is '参数键值';
comment on column sys_config.config_type   is '系统内置（Y是 N否）';
comment on column sys_config.create_by     is '创建者';
comment on column sys_config.create_time   is '创建时间';
comment on column sys_config.update_by     is '更新者';
comment on column sys_config.update_time   is '更新时间';
comment on column sys_config.remark        is '备注';

insert into sys_config values(1, '主框架页-默认皮肤样式名称', 'sys.index.skinName',     'skin-blue',     'Y', 'admin', TO_DATE('2018-03-16 11-33-00', 'YYYY-MM-DD HH24:MI:SS'), 'ry', TO_DATE('2018-03-16 11-33-00', 'YYYY-MM-DD HH24:MI:SS'), '蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow' );
insert into sys_config values(2, '用户管理-账号初始密码',     'sys.user.initPassword',  '123456',        'Y', 'admin', TO_DATE('2018-03-16 11-33-00', 'YYYY-MM-DD HH24:MI:SS'), 'ry', TO_DATE('2018-03-16 11-33-00', 'YYYY-MM-DD HH24:MI:SS'), '初始化密码 123456' );
insert into sys_config values(3, '主框架页-侧边栏主题',       'sys.index.sideTheme',    'theme-dark',    'Y', 'admin', TO_DATE('2018-03-16 11-33-00', 'YYYY-MM-DD HH24:MI:SS'), 'ry', TO_DATE('2018-03-16 11-33-00', 'YYYY-MM-DD HH24:MI:SS'), '深色主题theme-dark，浅色主题theme-light' );


-- ----------------------------
-- 14、系统访问记录
-- ----------------------------
create sequence seq_sys_logininfor
 increment by 1
 start with 100
 nomaxvalue
 nominvalue
 cache 20;

create table sys_logininfor (
  info_id 		 number(20)        not null,
  login_name 	 varchar2(50)   default '',
  ipaddr 		 varchar2(50)   default '',
  login_location varchar2(255)  default '',
  browser  		 varchar2(50)   default '',
  os      		 varchar2(50)   default '',
  status 		 char(1) 	   default '0',
  msg      		 varchar2(255)  default '',
  login_time 	 date
);

alter table sys_logininfor add constraint pk_sys_logininfor primary key (info_id);

comment on table  sys_logininfor                is '系统访问记录';
comment on column sys_logininfor.info_id        is '访问主键seq_seq_sys_logininfor.nextval';
comment on column sys_logininfor.login_name     is '登录账号';
comment on column sys_logininfor.ipaddr         is '登录IP地址';
comment on column sys_logininfor.login_location is '登录地点';
comment on column sys_logininfor.browser        is '浏览器类型';
comment on column sys_logininfor.os             is '操作系统';
comment on column sys_logininfor.status         is '登录状态（0成功 1失败）';
comment on column sys_logininfor.msg            is '提示消息';
comment on column sys_logininfor.login_time     is '访问时间';

-- ----------------------------
-- 15、在线用户记录
-- ----------------------------
create table sys_user_online (
  sessionId 	    varchar2(50)  default '',
  login_name 	    varchar2(50)  default '',
  dept_name 		varchar2(50)  default '',
  ipaddr 		    varchar2(50)  default '',
  login_location    varchar2(255) default '',
  browser  		    varchar2(50)  default '',
  os      		    varchar2(50)  default '',
  status      	    varchar2(10)  default '',
  start_timestamp 	date,
  last_access_time  date,
  expire_time 	    number(10) 		 default 0
);

alter table sys_user_online add constraint pk_sys_user_online primary key (sessionId);

comment on table  sys_user_online                   is '在线用户记录';
comment on column sys_user_online.sessionId         is '用户会话id';
comment on column sys_user_online.login_name        is '登录账号';
comment on column sys_user_online.dept_name         is '部门名称';
comment on column sys_user_online.ipaddr            is '登录IP地址';
comment on column sys_user_online.login_location    is '登录地点';
comment on column sys_user_online.browser           is '浏览器类型';
comment on column sys_user_online.os                is '操作系统';
comment on column sys_user_online.status            is '在线状态on_line在线off_line离线';
comment on column sys_user_online.start_timestamp   is 'session创建时间';
comment on column sys_user_online.last_access_time  is 'session最后访问时间';
comment on column sys_user_online.expire_time       is '超时时间，单位为分钟';

-- ----------------------------
-- 16、定时任务调度表
-- ----------------------------
create sequence seq_sys_job
 increment by 1
 start with 100
 nomaxvalue
 nominvalue
 cache 20;

create table sys_job (
  job_id 		      number(20) 	     not null,
  job_name            varchar2(64)   default '',
  job_group           varchar2(64)   default '',
  invoke_target       varchar2(500)  not null ,
  cron_expression     varchar2(255)  default '',
  misfire_policy      varchar2(20)   default '3',
  concurrent          char(1)        default '1',
  status              char(1)        default '0',
  create_by           varchar2(64)   default '',
  create_time         date,
  update_by           varchar2(64)   default '',
  update_time         date,
  remark              varchar2(500)   default ''
);

alter table sys_job add constraint pk_sys_job primary key (job_id, job_name, job_group);

comment on table  sys_job                   is '定时任务调度表';
comment on column sys_job.job_id            is '任务主键seq_sys_job.nextval';
comment on column sys_job.job_name          is '任务名称';
comment on column sys_job.job_group         is '任务组名';
comment on column sys_job.invoke_target       is '调用目标字符串';
comment on column sys_job.cron_expression   is 'cron执行表达式';
comment on column sys_job.misfire_policy    is '计划执行错误策略（1立即执行 2执行一次 3放弃执行）';
comment on column sys_job.concurrent        is '是否并发执行（0允许 1禁止）';
comment on column sys_job.status            is '状态（0正常 1暂停）';
comment on column sys_job.create_by         is '创建者';
comment on column sys_job.create_time       is '创建时间';
comment on column sys_job.update_by         is '更新者';
comment on column sys_job.update_time       is '更新时间';
comment on column sys_job.remark            is '备注信息';

-- ----------------------------
-- 17、定时任务调度日志表
-- ----------------------------
create sequence seq_sys_job_log
 increment by 1
 start with 1
 nomaxvalue
 nominvalue
 cache 20;

create table sys_job_log (
  job_log_id          number(20)	     not null,
  job_name            varchar2(64)   not null,
  job_group           varchar2(64)   not null,
  invoke_target         varchar2(500) not null ,
  job_message         varchar2(500),
  status              char(1)        default '0',
  exception_info      varchar2(2000) default '',
  create_time         date
);

alter table sys_job_log add constraint pk_sys_job_log primary key (job_log_id);

comment on table  sys_job_log                   is '定时任务调度日志表';
comment on column sys_job_log.job_log_id        is '日志主键seq_sys_job_log.nextval';
comment on column sys_job_log.job_name          is '任务名称';
comment on column sys_job_log.job_group         is '任务组名';
comment on column sys_job_log.invoke_target       is '调用目标字符串';
comment on column sys_job_log.job_message       is '日志信息';
comment on column sys_job_log.status            is '执行状态（0正常 1失败）';
comment on column sys_job_log.exception_info    is '异常信息';
comment on column sys_job_log.create_time       is '创建时间';


-- ----------------------------
-- 18、通知公告表
-- ----------------------------
create sequence seq_sys_notice
 increment by 1
 start with 100
 nomaxvalue
 nominvalue
 cache 20;

create table sys_notice (
  notice_id 		number(20) 		    not null,
  notice_title 		varchar2(50) 	not null,
  notice_type 		char(1) 	    not null,
  notice_content    varchar2(2000)  default null,
  status 			char(1) 		default '0',
  create_by         varchar2(64)    default '',
  create_time 		date,
  update_by 		varchar2(64) 	default '',
  update_time 		date,
  remark 			varchar2(255) 	default null
);

alter table sys_notice add constraint pk_sys_notice primary key (notice_id);

comment on table  sys_notice                   is '通知公告表';
comment on column sys_notice.notice_id         is '公告主键seq_sys_notice.nextval';
comment on column sys_notice.notice_title      is '公告标题';
comment on column sys_notice.notice_type       is '公告类型（1通知 2公告）';
comment on column sys_notice.notice_content    is '公告内容';
comment on column sys_notice.status            is '公告状态（0正常 1关闭）';
comment on column sys_notice.create_by         is '创建者';
comment on column sys_notice.create_time       is '创建时间';
comment on column sys_notice.update_by         is '更新者';
comment on column sys_notice.update_time       is '更新时间';
comment on column sys_notice.remark            is '备注';

-- ----------------------------
-- 19、代码生成业务表
-- ----------------------------
create sequence seq_gen_table
 increment by 1
 start with 100
 nomaxvalue
 nominvalue
 cache 20;

create table gen_table (
  table_id          number(20)      not null,
  table_name        varchar2(200)    default '',
  table_comment     varchar2(500)    default '',
  class_name        varchar2(100)    default '',
  tpl_category      varchar2(200)    default 'crud',
  package_name      varchar2(100),
  module_name       varchar2(30),
  business_name     varchar2(30),
  function_name     varchar2(50),
  function_author   varchar2(50),
  options           varchar2(1000),
  create_by         varchar2(64)     default '',
  create_time       date,
  update_by         varchar2(64)     default '',
  update_time       date,
  remark            varchar2(500)    default null
);
alter table gen_table add constraint pk_gen_table primary key (table_id);

comment on table  gen_table                  is '代码生成业务表';
comment on column gen_table.table_id         is '编号';
comment on column gen_table.table_name       is '表名称';
comment on column gen_table.table_comment    is '表描述';
comment on column gen_table.class_name       is '实体类名称';
comment on column gen_table.tpl_category     is '使用的模板（crud单表操作 tree树表操作）';
comment on column gen_table.package_name     is '生成包路径';
comment on column gen_table.module_name      is '生成模块名';
comment on column gen_table.business_name    is '生成业务名';
comment on column gen_table.function_name    is '生成功能名';
comment on column gen_table.function_author  is '生成功能作者';
comment on column gen_table.options          is '其它生成选项';
comment on column gen_table.create_by        is '创建者';
comment on column gen_table.create_time      is '创建时间';
comment on column gen_table.update_by        is '更新者';
comment on column gen_table.update_time      is '更新时间';
comment on column gen_table.remark           is '备注';


-- ----------------------------
-- 20、代码生成业务表字段
-- ----------------------------
create sequence seq_gen_table_column
 increment by 1
 start with 100
 nomaxvalue
 nominvalue
 cache 20;
create table gen_table_column (
  column_id         number(20)      not null,
  table_id          varchar2(64),
  column_name       varchar2(200),
  column_comment    varchar2(500),
  column_type       varchar2(100),
  java_type         varchar2(500),
  java_field        varchar2(200),
  is_pk             char(1),
  is_increment      char(1),
  is_required       char(1),
  is_insert         char(1),
  is_edit           char(1),
  is_list           char(1),
  is_query          char(1),
  query_type        varchar(200)    default 'EQ',
  html_type         varchar(200),
  dict_type         varchar(200)    default '',
  sort              number(4),
  create_by         varchar(64)     default '',
  create_time       date ,
  update_by         varchar(64)     default '',
  update_time       date
) ;
alter table gen_table_column add constraint pk_gen_table_column primary key (column_id);

comment on table  gen_table_column                is '代码生成业务表字段';
comment on column gen_table_column.column_id      is '编号';
comment on column gen_table_column.table_id       is '归属表编号';
comment on column gen_table_column.column_name    is '列名称';
comment on column gen_table_column.column_comment is '列描述';
comment on column gen_table_column.column_type    is '列类型';
comment on column gen_table_column.java_type      is 'JAVA类型';
comment on column gen_table_column.java_field     is 'JAVA字段名';
comment on column gen_table_column.is_pk          is '是否主键（1是）';
comment on column gen_table_column.is_increment   is '是否自增（1是）';
comment on column gen_table_column.is_required    is '是否必填（1是）';
comment on column gen_table_column.is_insert      is '是否为插入字段（1是）';
comment on column gen_table_column.is_edit        is '是否编辑字段（1是）';
comment on column gen_table_column.is_list        is '是否列表字段（1是）';
comment on column gen_table_column.is_query       is '是否查询字段（1是）';
comment on column gen_table_column.query_type     is '查询方式（等于、不等于、大于、小于、范围）';
comment on column gen_table_column.html_type      is '显示类型（文本框、文本域、下拉框、复选框、单选框、日期控件）';
comment on column gen_table_column.dict_type      is '字典类型';
comment on column gen_table_column.sort           is '排序';
comment on column gen_table_column.create_by      is '创建者';
comment on column gen_table_column.create_time    is '创建时间';
comment on column gen_table_column.update_by      is '更新者';
comment on column gen_table_column.update_time    is '更新时间';




