package com.example.miniprojectee;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.util.Enumeration;
import java.util.Map;


@WebServlet(name = "helloServlet", value = "/hello-servlet", loadOnStartup = 1)
public class HelloServlet extends HttpServlet {
    private String message;

    public void init() {
        System.out.println("Init method of my servlet");
        message = "Hello World!";
    }

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        System.out.println("doGet");
        System.out.println("getContextPath()"+request.getContextPath());
        System.out.println("getServletPath()"+request.getServletPath());
        System.out.println("getMethod()"+request.getMethod());
        System.out.println("getRequestURI()"+request.getRequestURI());
        System.out.println("name param()"+request.getParameter("name"));
        System.out.println("header1 value "+request.getHeader("MyHeader1"));
        Map parameterMap = request.getParameterMap();
        System.out.println("All parameters");

        for (Object o : parameterMap.entrySet()) {
            System.out.println("** "+o);
        }
        String header = request.getHeader("Content-type");
        System.out.println("contentType header "+header);
        Enumeration headerNames = request.getHeaderNames();
        while (headerNames.hasMoreElements()){
            Object o = headerNames.nextElement();
            String header1 = request.getHeader(o.toString());
            System.out.println(o+" "+header1);
        }
        response.setContentType("text/html");

        PrintWriter out = response.getWriter();
        out.println("<html><body>");
        out.println("<h1>" + message + "</h1>");
        out.println("<h1>" + "Poxos" + "</h1>");
        out.println("<h1>" + "Poxosyan" + "</h1>");
        out.println("</body></html>");
    }

    public void destroy() {
        System.out.println("destroy method");
    }
}