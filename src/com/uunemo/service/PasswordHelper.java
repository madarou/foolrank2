package com.uunemo.service;

import org.apache.shiro.crypto.RandomNumberGenerator;
import org.apache.shiro.crypto.SecureRandomNumberGenerator;
import org.apache.shiro.crypto.hash.SimpleHash;
import org.apache.shiro.util.ByteSource;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import com.uunemo.beans.User;

@Service("PasswordHelper")
public class PasswordHelper {

    private RandomNumberGenerator randomNumberGenerator = new SecureRandomNumberGenerator();

    //@Value("${password.algorithmName}")
    private String algorithmName = "md5";
    //@Value("${password.hashIterations}")
    private int hashIterations = 2;

    public void setRandomNumberGenerator(RandomNumberGenerator randomNumberGenerator) {
        this.randomNumberGenerator = randomNumberGenerator;
    }

    public void setAlgorithmName(String algorithmName) {
        this.algorithmName = algorithmName;
    }

    public void setHashIterations(int hashIterations) {
        this.hashIterations = hashIterations;
    }

    //注册时用
    public void encryptPassword(User user) {

        user.setSalt(randomNumberGenerator.nextBytes().toHex());
    	//user.setSalt("nemo");
    	
        String newPassword = new SimpleHash(
                algorithmName,
                user.getPassword(),
                //ByteSource.Util.bytes(user.getEmail()+"uunemo"),//邮箱+uunemo作为盐，这个盐的值可以不用存数据库了
                ByteSource.Util.bytes(user.fetchCredentialsSalt()),
                hashIterations).toHex();

        user.setPassword(newPassword);
    }
    
    //登录时先密码加密再与数据库的比对
    public String encryptPassword(String login_email, String login_password) {

    	String newPassword = new SimpleHash(
                algorithmName,
                login_password,
                ByteSource.Util.bytes(login_email+"uunemo"),
                hashIterations).toHex();

        return newPassword;
    }
}
