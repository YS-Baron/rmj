package com.rmj.servlet;

import com.alibaba.druid.util.StringUtils;
import com.google.code.kaptcha.Constants;
import com.rmj.common.Constant;
import com.rmj.po.User;
import com.rmj.service.impl.UserServiceImpl;
import com.rmj.util.JsonUtil;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

/**
 * @author YUSUI
 * created by YUSUI 2019/7/23
 */
@WebServlet(value = {"/login", "/reg", "/logout"})
public class LoginServlet extends HttpServlet {

    private UserServiceImpl userService;

    public LoginServlet() {
        userService = new UserServiceImpl();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String path = req.getServletPath().substring(1);

        if ("login".equals(path)) {
            doLogin(req, resp);
        } else if ("reg".equals(path)) {
            doReg(req, resp);
        } else if ("logout".equals(path)) {
            doLogout(req, resp);
        }
    }

    private void doLogout(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        req.getSession().invalidate();
        Cookie[] cookies = req.getCookies();
        for (Cookie cookie : cookies) {
            if (Constant.USER_COOKIE.equals(cookie.getName())) {
                cookie = new Cookie(cookie.getName(), "");
                cookie.setPath("/");
                resp.addCookie(cookie);
                break;
            }
        }
        //用户登入退出后，跳转到主页面
        resp.sendRedirect("index.jsp");
    }

    private void doReg(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        Map<String, Object> map = new HashMap<>();
        String name = req.getParameter("name");
        String password = req.getParameter("password");
        int role = Integer.parseInt(req.getParameter("role"));
        String realCode = (String) req.getSession().getAttribute(Constants.KAPTCHA_SESSION_KEY);
        String checkCode = req.getParameter("checkCode");
        PrintWriter out = resp.getWriter();
        if (!realCode.equals(checkCode)) {
            out.print(JsonUtil.getJsonStr("验证码错误！！！"));
        } else {
            map = userService.reg(name, password, role);
            if (map.isEmpty()) {
                out.print(JsonUtil.getJsonStr(1, "注册成功"));
//                resp.sendRedirect("index.jsp");
            } else {
                out.print(JsonUtil.getJsonStr(0, map));
            }
        }
    }

    private void doLogin(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
        Map<String, Object> map = new HashMap<>();
        String name = req.getParameter("name");
        String password = req.getParameter("password");
        String rember = req.getParameter("remeber");
        String realCode = (String) req.getSession().getAttribute(Constants.KAPTCHA_SESSION_KEY);
        String checkCode = req.getParameter("checkCode");
        PrintWriter out = resp.getWriter();
        if (!realCode.equals(checkCode)) {
            out.print(JsonUtil.getJsonStr("验证码错误！！！"));
        } else {
            map = userService.login(name, password);
            if (map.containsKey("user")) {
                Cookie cookie = new Cookie(Constant.USER_COOKIE, name);
                cookie.setPath("/");
                if ("1".equals(rember)) {
                    cookie.setMaxAge(3600 * 24 * 7);
                } else {
                    cookie.setMaxAge(3600 * 24);
                }
                resp.addCookie(cookie);
                req.getSession().setAttribute(Constant.USER_SESSION, name);
                User user = (User) map.get("user");
                int role = user.getRole();
                String fromPage = req.getParameter("from");
                switch (role) {
                    case 0:
                        //管理员界面
//                        req.getRequestDispatcher("admin.jsp").forward(req, resp);
                        out.print(JsonUtil.getJsonStr("manager.jsp"));
                        break;
                    case 1:
                        //跳转到点击登入的页面之中
//                        req.getRequestDispatcher(fromPage).forward(req, resp);
                        out.print(JsonUtil.getJsonStr(fromPage));
                        break;
                    case 2:
                        //房东页面
//                        req.getRequestDispatcher("fangdong.jsp").forward(req, resp);
                        out.print(JsonUtil.getJsonStr("fangdong.jsp"));
                        break;
                    default:
                        out.print(JsonUtil.getJsonStr(0, "该用户异常!!!请联系管理员"));
                }
            } else {
                out.print(JsonUtil.getJsonStr(0, map));
            }
        }
    }
}
