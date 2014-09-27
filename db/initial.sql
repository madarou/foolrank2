//基础角色
INSERT INTO `uunemo`.`role` (`role_id`, `role_name`) VALUES (NULL, 'user'),(NULL, 'advanceduser'),(NULL, 'operator'),(NULL, 'admin');
//基础题库类型基础-游客 高级-登录 收费-付费
INSERT INTO `uunemo`.`quizset` (`quizset_id`, `remark`, `quizset_name`, `set_score_criterion`) VALUES (NULL, '基础，不登陆也能做', 'basic', NULL), (NULL, '高级，需要登录才能做', 'advanced', NULL),(NULL, '付费‘，需要付费才能做', 'paid', NULL);