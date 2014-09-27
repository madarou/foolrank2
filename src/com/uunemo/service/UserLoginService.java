package com.uunemo.service;

import java.util.List;

import javax.annotation.Resource;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.IncorrectCredentialsException;
import org.apache.shiro.authc.LockedAccountException;
import org.apache.shiro.authc.UnknownAccountException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.uunemo.beans.User;
import com.uunemo.daos.BulletinDAO;
import com.uunemo.daos.UserDao;

@Service("UserLoginService")
public class UserLoginService {

	@Resource(name = "UserDao")
	private UserDao userdao;

	@Resource(name = "BulletinDAO")
	private BulletinDAO bulletinDao;

	@Transactional(propagation = Propagation.REQUIRED, rollbackFor = Exception.class)
	public boolean checkUser(String username, String password) {
		User user = userdao.findByName(username);
		if (user != null) {
			String db_psd = user.getPassword();
			if (password.equals(db_psd)) {
				return true;
			} else
				return false;
		} else
			return false;
	}

	public String firstLogin() {
		if(bulletinDao.getLatestBulletin()!=null){
			return bulletinDao.getLatestBulletin().getDescription();
		}else{
			return null;
		}
		
		
	}
	
	public String validataUser(String email, String password) {
		int errorMsg = 0;		
		UsernamePasswordToken token = new UsernamePasswordToken(
				email,password
				);
		
		try {
			SecurityUtils.getSubject().login(token);
		}catch (UnknownAccountException uae) {
			System.out.println("There is no user with username of " + token.getPrincipal());
			errorMsg = 1;
        } catch (IncorrectCredentialsException ice) {
        	System.out.println("Password for account " + token.getPrincipal() + " was incorrect!");
        	errorMsg = 2;
        } catch (LockedAccountException lae) {
        	System.out.println("The account for username " + token.getPrincipal() + " is locked.  " +
                    "Please contact your administrator to unlock it.");
        	errorMsg = 3;
        }
        // ... catch more exceptions here (maybe custom ones specific to your application?
        catch (AuthenticationException ae) {
            //unexpected condition?  error?
        	System.out.println("unknow exception");
        	errorMsg = 4;
        } 
		
		String rtuser = "nobody";
		
		//登录成功
		if(0 == errorMsg){
			rtuser=email;
		}
		//登录失败即退出
		else{
			SecurityUtils.getSubject().logout();
		}
		
		
		return rtuser;
	}

}
