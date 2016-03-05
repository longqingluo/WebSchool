package com.cn.qpm.usermanage.service;

import com.cn.qpm.usermanage.model.LoginUser;


/**
 * declaration： 
 *
 * author wenkangqiang
 * date   2016年3月3日
 */
public interface IUserService {
	
	public LoginUser getUserById(String userId);
	
	public LoginUser checkLogin(String email, String password);

}
