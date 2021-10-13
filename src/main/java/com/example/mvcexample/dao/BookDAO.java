package com.example.mvcexample.dao;

import com.example.mvcexample.Book;

import java.util.ArrayList;
import java.util.List;

public class BookDAO {
    private List<Book> books = new ArrayList();

    public BookDAO(){
        Book b1 = new Book("Fellowship", "Tolkien", "Penguin");
        Book b2 = new Book("Chamber", "Rowling", "Flamingo");
        Book b3 = new Book("Java", "Martina", "Rhino");

        books.add(b1);
        books.add(b2);
        books.add(b3);
    }

    public void addNewBook(Book b) {
        books.add(b);
    }
    public List<Book> books() {
        return books;
    }
}
