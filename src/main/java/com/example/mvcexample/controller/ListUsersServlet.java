package com.example.mvcexample.controller;

import com.example.mvcexample.User;
import com.example.mvcexample.model.UserDAO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "ListUsersServlet", value = "/ListUsersServlet")
public class ListUsersServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        response.setContentType("text/html");

        new UserDAO();
        List<User> list = new ArrayList<>();
        list = UserDAO.list();

        request.setAttribute("myList", list);
        request.getRequestDispatcher("listUsers.jsp").forward(request, response);
    }
}
