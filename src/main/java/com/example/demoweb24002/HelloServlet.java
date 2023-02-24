package com.example.demoweb24002;

import java.io.*;

import com.example.demoweb24002.data.User;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

@WebServlet(name = "helloServlet", value = {"/hello-servlet", "/hello-user"})
public class HelloServlet extends HttpServlet {
    private String message;

    public void init() {
        message = "Hello World! From JSP";
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        //
        if (request.getRequestURI().endsWith("servlet")) {
            request.setAttribute("msg", message);
        }
        request.getRequestDispatcher("/hello.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("username");
        int age = Integer.parseInt(request.getParameter("userage"));
        User user = new User(name, age);
        request.setAttribute("user", user);
        request.getRequestDispatcher("/hellouser.jsp").forward(request, response);
    }

    public void destroy() {
    }
}