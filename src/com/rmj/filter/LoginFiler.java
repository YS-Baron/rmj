package com.rmj.filter;

import com.alibaba.druid.util.StringUtils;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

/**
 * 用户登入的拦截器，拦截未登入的用户，放过一些资源文件等
 *
 * @author YUSUI
 * created by YUSUI 2019/7/22
 */
//@WebFilter(value = "/*", initParams = {
//        @WebInitParam(name = "excludes", value = "static/,upload/")})
public class LoginFiler implements Filter {

    //被放过的文件
    private String[] paths = null;

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        String excludes = filterConfig.getInitParameter("excludes");
        paths = excludes.split(",");
    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        HttpServletRequest request = (HttpServletRequest) servletRequest;
        HttpServletResponse response = (HttpServletResponse) servletResponse;
        //当前请求名称
        String path = request.getServletPath().substring(1);

        //放过资源
        for (String p : paths) {
            if (path.startsWith(p)) {
                filterChain.doFilter(request, response);
                return;
            }
        }

        //放过登入页面
        if ("index.jsp".equals(path) || path.endsWith("login.jsp")
                || "login".equals(path) || "reg".equals(path)) {
            filterChain.doFilter(request, response);
        } else {
            //校验用户是否登入
            if (checkUser(request, response)) {
                filterChain.doFilter(request, response);
            } else {
                response.sendRedirect(request.getContextPath() + "/login.jsp");
            }
        }

    }

    @Override
    public void destroy() {

    }

    private boolean checkUser(HttpServletRequest request, HttpServletResponse response) {
        Cookie[] cookies = request.getCookies();
        if (cookies != null) {
            for (Cookie cookie : cookies) {
                if ("user".equals(cookie.getName()) && !StringUtils.isEmpty(cookie.getValue())) {
                    return true;
                }
            }
        }
        //false表示如果存在session就返回，没有就返回null
        HttpSession session = request.getSession(false);
        Object obj = null;
        if (session != null) {
            obj = session.getAttribute("user");
        }
        return obj != null;
    }
}
