package com.uunemo.security;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.ExcessiveAttemptsException;
import org.apache.shiro.authc.credential.HashedCredentialsMatcher;
import org.apache.shiro.cache.Cache;
import org.apache.shiro.cache.CacheManager;
import org.apache.shiro.crypto.hash.SimpleHash;
import org.apache.shiro.util.ByteSource;

import com.uunemo.service.PasswordHelper;

import java.util.concurrent.atomic.AtomicInteger;

import javax.annotation.Resource;

/**
 * <p>User: Zhang Kaitao
 * <p>Date: 14-1-28
 * <p>Version: 1.0
 */
public class RetryLimitHashedCredentialsMatcher extends HashedCredentialsMatcher {

    private Cache<String, AtomicInteger> passwordRetryCache;

    public RetryLimitHashedCredentialsMatcher(CacheManager cacheManager) {
        passwordRetryCache = cacheManager.getCache("passwordRetryCache");
    }
    
    @Resource
	private PasswordHelper passwordHelper;

    //登录时的密码验证
    @Override
    public boolean doCredentialsMatch(AuthenticationToken token, AuthenticationInfo info) {
        String login_email = (String)token.getPrincipal();
        //retry count + 1
        AtomicInteger retryCount = passwordRetryCache.get(login_email);
        if(retryCount == null) {
            retryCount = new AtomicInteger(0);
            passwordRetryCache.put(login_email, retryCount);
        }
        if(retryCount.incrementAndGet() > 5) {
            //if retry count > 5 throw
            throw new ExcessiveAttemptsException();
        }
        
        //String login_password = new String((char[])token.getCredentials()); 
        //String newPassword = passwordHelper.encryptPassword(login_email, login_password);
     
        boolean matches = super.doCredentialsMatch(token, info);
        //boolean matches = super.equals(newPassword, (String)info.getCredentials());
        if(matches) {
            //clear retry count
            passwordRetryCache.remove(login_email);
        }
        return matches;
    }
}
