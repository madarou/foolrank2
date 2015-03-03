package com.uunemo.filter;

import javax.servlet.ServletContext;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.shiro.session.Session;
import org.apache.shiro.subject.Subject;
import org.apache.shiro.web.filter.authc.FormAuthenticationFilter;

public class RememberAuthenticationFilter extends FormAuthenticationFilter {
	/**
	 * 这个方法决定了是否能让用户登录
	 */
	@Override
	protected boolean isAccessAllowed(ServletRequest request,
			ServletResponse response, Object mappedValue) {
		Subject subject = getSubject(request, response);
		
		setLoginUrl("/unauthorized.jsp");
		// 如果 isAuthenticated 为 false 证明不是登录过的，同时 isRememberd 为true
		// 证明是没登陆直接通过记住我功能进来的
		if (!subject.isAuthenticated() && subject.isRemembered()) {
			//从remember里取之前的用户登录邮箱
			String email = subject.getPrincipal().toString();
			if(email!=null || !"".equals(email))
			{	//往http的session里放remember里取得的登录邮箱，再调用/rememberMeCheck来查找用户完整的信息
				HttpSession httpsession = ((HttpServletRequest)request).getSession();   
			    httpsession.setAttribute("email", email);
				setLoginUrl("/rememberMeCheck");
			}
		}

		// 这个方法本来只返回 subject.isAuthenticated() 现在我们加上 subject.isRemembered()
		// 让它同时也兼容remember这种情况
		return subject.isAuthenticated() || subject.isRemembered();
	}
}