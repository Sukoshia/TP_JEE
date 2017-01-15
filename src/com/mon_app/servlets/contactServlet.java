package com.mon_app.servlets;

import com.mon_app.beans.contact;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

/**
 * Created by mecosse on 17/11/2016.
 */
@WebServlet(name = "contactServlet", urlPatterns = {"/contact"})
public class contactServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        contact Contact = new contact();
        String name = request.getParameter("name");
        Contact.setNom(name);
        String nom = request.getParameter("nom");
        Contact.setPrenom(nom);
        String email = request.getParameter("email");
        Contact.setEmail(email);
        String message = request.getParameter("message");
        Contact.setMessage(message);

        request.setAttribute("Contact", Contact);



        //String email = request.getParameter( CHAMP_EMAIL );
        //String name = request.getParameter( CHAMP_NOM );
        //String prenom = request.getParameter( CHAMP_PRENOM );

        HttpSession session = request.getSession();
        session.setAttribute("Contact", Contact);
        session.getAttribute(nom);
        session.getAttribute(email);
        session.getAttribute(name);


        this.getServletContext().getRequestDispatcher( "/WEB-INF/reponseContact.jsp" ).forward( request, response );
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.getServletContext().getRequestDispatcher("/WEB-INF/contact.jsp").forward(request,response);
    }
}
