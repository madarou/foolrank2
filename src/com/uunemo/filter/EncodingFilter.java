package com.uunemo.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

public class EncodingFilter implements Filter {

	private String targetEncoding;
	
	public void init(FilterConfig config) throws ServletException {
		this.targetEncoding = config.getInitParameter("encoding");
	}

	public void doFilter(ServletRequest req, ServletResponse resp,
			FilterChain chain) throws IOException, ServletException {
		// TODO Auto-generated method stub
		System.out.println("encode filter");
		req.setCharacterEncoding(targetEncoding);
		chain.doFilter(req, resp);
	}
	
	public void destroy() {
		// TODO Auto-generated method stub

	}

	
}