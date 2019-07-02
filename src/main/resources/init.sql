-- VIEW
INSERT INTO `t_sys_menu` (`created_time`, `updated_time`, `data_state`, `name`, `url`, `description`, `sort`, `i18n`, `icon_cls`, `parent_id`) VALUES (now(), now(), 'Enable', 'VIEW', '/admin/vwstuview', '', '0', null, null, NULL);

INSERT INTO `t_sys_url` (`created_time`, `updated_time`, `data_state`, `url`, `description`) VALUES (now(), now(), 'Enable', '/admin/vwstuview/page-list', 'VIEW-获取VIEW分页数据');
INSERT INTO `t_sys_url` (`created_time`, `updated_time`, `data_state`, `url`, `description`) VALUES (now(), now(), 'Enable', '/admin/vwstuview/list', 'VIEW-获取VIEW列表数据');
INSERT INTO `t_sys_url` (`created_time`, `updated_time`, `data_state`, `url`, `description`) VALUES (now(), now(), 'Enable', '/admin/vwstuview/create', 'VIEW-创建VIEW');
INSERT INTO `t_sys_url` (`created_time`, `updated_time`, `data_state`, `url`, `description`) VALUES (now(), now(), 'Enable', '/admin/vwstuview/update', 'VIEW-修改VIEW');
INSERT INTO `t_sys_url` (`created_time`, `updated_time`, `data_state`, `url`, `description`) VALUES (now(), now(), 'Enable', '/admin/vwstuview/careful-delete', 'VIEW-删除VIEW');
INSERT INTO `t_sys_url` (`created_time`, `updated_time`, `data_state`, `url`, `description`) VALUES (now(), now(), 'Enable', '/admin/vwstuview/detail', 'VIEW-查看VIEW详情');
INSERT INTO `t_sys_url` (`created_time`, `updated_time`, `data_state`, `url`, `description`) VALUES (now(), now(), 'Enable', '/admin/vwstuview/exist', 'VIEW-检查VIEW属性是否存在');

INSERT INTO `t_sys_permission` (`created_time`, `updated_time`, `data_state`, `name`, `description`, `code`, `parent_id`, `sort`) select now(), now(), 'Enable', 'VIEW管理权限', 'VIEW增删改查', 'VIEW', id, '1' from t_sys_permission where code = 'Other';
INSERT INTO `t_sys_menu_permission_rela` (`created_time`, `updated_time`, `data_state`, `perm_id`, `menu_id`) select now(), now(), 'Enable', p.id, m.id from t_sys_permission p, t_sys_menu m where p.name = 'VIEW管理权限' and m.url='/admin/vwstuview';
INSERT INTO `t_sys_url_permission_rela` (`created_time`, `updated_time`, `data_state`, `perm_id`, `url_id`) select now(), now(), 'Enable', p.id, u.id from t_sys_permission p, t_sys_url u where p.name = 'VIEW管理权限' and u.url = '/admin/vwstuview/page-list';
INSERT INTO `t_sys_url_permission_rela` (`created_time`, `updated_time`, `data_state`, `perm_id`, `url_id`) select now(), now(), 'Enable', p.id, u.id from t_sys_permission p, t_sys_url u where p.name = 'VIEW管理权限' and u.url = '/admin/vwstuview/list';
INSERT INTO `t_sys_url_permission_rela` (`created_time`, `updated_time`, `data_state`, `perm_id`, `url_id`) select now(), now(), 'Enable', p.id, u.id from t_sys_permission p, t_sys_url u where p.name = 'VIEW管理权限' and u.url = '/admin/vwstuview/create';
INSERT INTO `t_sys_url_permission_rela` (`created_time`, `updated_time`, `data_state`, `perm_id`, `url_id`) select now(), now(), 'Enable', p.id, u.id from t_sys_permission p, t_sys_url u where p.name = 'VIEW管理权限' and u.url = '/admin/vwstuview/update';
INSERT INTO `t_sys_url_permission_rela` (`created_time`, `updated_time`, `data_state`, `perm_id`, `url_id`) select now(), now(), 'Enable', p.id, u.id from t_sys_permission p, t_sys_url u where p.name = 'VIEW管理权限' and u.url = '/admin/vwstuview/careful-delete';
INSERT INTO `t_sys_url_permission_rela` (`created_time`, `updated_time`, `data_state`, `perm_id`, `url_id`) select now(), now(), 'Enable', p.id, u.id from t_sys_permission p, t_sys_url u where p.name = 'VIEW管理权限' and u.url = '/admin/vwstuview/careful-detail';
INSERT INTO `t_sys_url_permission_rela` (`created_time`, `updated_time`, `data_state`, `perm_id`, `url_id`) select now(), now(), 'Enable', p.id, u.id from t_sys_permission p, t_sys_url u where p.name = 'VIEW管理权限' and u.url = '/admin/vwstuview/careful-exist';



-- VIEW
delete from `t_sys_menu` where name = 'VIEW' and url = '/admin/vwstuview';

delete from `t_sys_url` where url = '/admin/vwstuview/page-list';
delete from `t_sys_url` where url = '/admin/vwstuview/list';
delete from `t_sys_url` where url = '/admin/vwstuview/create';
delete from `t_sys_url` where url = '/admin/vwstuview/update';
delete from `t_sys_url` where url = '/admin/vwstuview/careful-delete';
delete from `t_sys_url` where url = '/admin/vwstuview/detail';
delete from `t_sys_url` where url = '/admin/vwstuview/exist';

delete from t_sys_permission where name = 'VIEW管理权限';

