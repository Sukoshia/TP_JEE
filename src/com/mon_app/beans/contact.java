package com.mon_app.beans;

/**
 * Created by mecosse on 17/11/2016.
 */
public class contact {

    String nom;
    String prenom;
    String email;
    String message;

    public contact(){
        nom = "";
        prenom = "";
        email = "";
        message = "";
    }

    public contact(String nom, String prenom, String email, String message){
        this.nom = nom;
        this.prenom = prenom;
        this.email = email;
        this.message = message;
    }

    public String getEmail() {
        return email;
    }
    public void setEmail(String email) {
        this.email = email;
    }

    public String getNom() {
        return nom;
    }
    public void setNom(String nom) {
        this.nom = nom;
    }

    public String getPrenom() {
        return prenom;
    }
    public void setPrenom(String prenom) {
        this.prenom = prenom;
    }

    public String getMessage() { return message;}
    public void setMessage(String message) { this.message = message;}

}
