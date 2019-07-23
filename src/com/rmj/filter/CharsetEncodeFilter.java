package com.rmj.filter;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.annotation.WebInitParam;
import java.io.IOException;

/**
 * @author YUSUI
 * created by YUSUI 2019/7/19
 */
@WebFilter(value = "/*",initParams = {
        @WebInitParam(name = "charset",value = "utf-8")})
public class CharsetEncodeFilter implements Filter {

    String charset;

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
            charset = filterConfig.getInitParameter("charset");
    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
            servletRequest.setCharacterEncoding(charset);
            servletResponse.setCharacterEncoding(charset);
            servletResponse.setContentType("text/html;charset=utf-8");
            filterChain.doFilter(servletRequest,servletResponse);
    }

    @Override
    public void destroy() {

    }
}
