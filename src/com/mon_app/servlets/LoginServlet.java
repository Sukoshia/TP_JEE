package com.mon_app.servlets;

import com.mon_app.beans.Validate;
import com.mon_app.beans.contact;
import com.sun.tools.internal.xjc.reader.xmlschema.bindinfo.BIConversion;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import java.util.StringJoiner;

import static java.lang.System.out;

/**
 * Created by mecosse on 08/12/2016.
 */
@WebServlet(name = "LoginServlet", urlPatterns = {"/login"})
public class LoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        contact Contact = new contact();
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        System.out.println("validate");

        if(Validate.checkUser(email,password))
        {
//            request.getSession().setAttribute("admin", email);
//            request.getRequestDispatcher("/WEB-INF/accesRestreint.jsp").forward(request, response);
            RequestDispatcher rs = request.getRequestDispatcher("/WEB-INF/accesRestreint.jsp");
            rs.forward(request, response);

        }

        else
        {
            System.out.println("Username or Password incorrect");
            RequestDispatcher rs = request.getRequestDispatcher("/index");
            rs.include(request, response);
        }


    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/WEB-INF/login.jsp").forward(request, response);
    }
}
