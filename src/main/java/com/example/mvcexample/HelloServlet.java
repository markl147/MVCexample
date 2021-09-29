package com.example.mvcexample;

import java.io.*;
import javax.servlet.ServletException;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

@WebServlet(name = "HelloServlet", value = "/HelloServlet")
public class HelloServlet extends HttpServlet {
    private String message;

    public void init() {
        message = "Hello World!";
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        response.setContentType("text/html");

        String userName = request.getParameter("name");
        String address = request.getParameter("address");

        User u1 = new User(userName, address);

        request.setAttribute("myUser", u1);
        request.getRequestDispatcher("ShowUser.jsp").forward(request, response);

//        // Hello
//        PrintWriter out = response.getWriter();
//        out.println("<html><body>");
//        out.println("<h1> Hello " + userName + " from " + address + "</h1>");
//        out.println("</body></html>");
    }

    public void destroy() {
    }
}