package com.example.mvcexample.controller;

import com.example.mvcexample.Book;
import com.example.mvcexample.User;
import com.example.mvcexample.dao.BookDAO;
import com.example.mvcexample.dao.UserDAO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "ListBooksServlet", value = "/ListBooksServlet")

public class ListBooksServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        response.setContentType("text/html");

        new BookDAO();
        List<Book> books = new ArrayList<>();
        books = BookDAO.books();

        request.setAttribute("myBookList", books);
        request.getRequestDispatcher("listBooks.jsp").forward(request, response);
    }
}


