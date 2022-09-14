package com.example.miniprojectee.servlet;

import com.example.miniprojectee.manager.UserManager;
import com.example.miniprojectee.models.User;
import com.example.miniprojectee.util.Md5Util;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "logout", value = "/logout", loadOnStartup = 1)

public class LogOutServlet extends HttpServlet {

    private UserManager userManager;

    public void init() throws ServletException {
        userManager = new UserManager();
    }

    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("home.jsp").forward(req, resp);
    }
}
