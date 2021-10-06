package com.example.mvcexample.model;

import com.example.mvcexample.User;

import java.awt.*;
import java.util.List;
import java.util.ArrayList;

public class UserDAO {
    private static ArrayList<User> list = new ArrayList();

    public UserDAO(){
        User Ray = new User("Ray", "Clara");
        User Jack = new User("Jack", "Clara");
        User Erik = new User("Erik", "Kilbeggan");

        list.add(Ray);
        list.add(Jack);
        list.add(Erik);
    }

    public static List<User> list() {
        return list;
    }
}
