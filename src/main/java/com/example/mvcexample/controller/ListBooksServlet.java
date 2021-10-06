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
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        response.setContentType("text/html");

        BookDAO bdao = new BookDAO();
//        List<Book> books = new ArrayList<>();
//        books = BookDAO.books();

        request.setAttribute("myBookList", bdao.books());
        request.getRequestDispatcher("listBooks.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        response.setContentType("text/html");

        BookDAO bdao = new BookDAO();
        String title = request.getParameter("title");
        String author = request.getParameter("author");
        String publisher = request.getParameter("publisher");

        Book newEntry = new Book(title, author, publisher);
        bdao.addNewBook(newEntry);

        request.setAttribute("myBookList", bdao.books());
        request.getRequestDispatcher("listBooks.jsp").forward(request, response);
    }
}


