<%--
  Created by IntelliJ IDEA.
  User: mecosse
  Date: 17/11/2016
  Time: 08:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <title>Ihop annonces</title>
    <link rel="stylesheet" type="text/css" href="CSS/style.css">
</head>
<header>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    <fmt:setBundle basename = "ressources.td" />
    <%--<c:out value="hello world"/>--%>
    <h1>Bienvenue sur ihop</h1>
    <jsp:useBean id="Contact" class="com.mon_app.beans.contact" scope="session"></jsp:useBean>
    <c:if test="${empty Contact.nom} ${empty Contact.nom}">
        <c:out value="coucou"/>
    </c:if>
    <c:if test="${not empty Contact.nom}">
        <h4><c:out value="Bienvenue : ${Contact.nom} ${Contact.prenom}"/></h4>
    </c:if>
    <c:if test="${not empty Contact.nom}">
        <h4><c:out value="Votre email : ${Contact.email}"/></h4>
    </c:if>

    <%--<c:choose>--%>
        <%--<c:when test="${empty Contact.nom} ${empty Contact.prenom}"></c:when>--%>
        <%--<c:otherwise><h4>Bienvenue ${Contact.nom} ${Contact.prenom}</h4></c:otherwise>--%>
    <%--</c:choose>--%>
    <%--<c:choose>--%>
        <%--<c:when test="${empty Contact.email} "></c:when>--%>
        <%--<c:otherwise><h4>Votre email : ${Contact.email}</h4></c:otherwise>--%>
    <%--</c:choose>--%>

    <figure>
        <div id='logo'>
            <a href="index"><img src="ihope-gallery-1.png" alt="logo du site" style="width:320px;height:228px;"></a>
        </div>
    </figure>
    <div id='menu'>
        <nav>
            <ul class="nav-list">
                <li class="nav-item"><a href="index#annonce_phare"><fmt:message key="menutop"/></a></li>
                <li class="nav-item"><a href="index#vehicules"><fmt:message key="menucar"/></a></li>
                <li class="nav-item"><a href="index#immo"><fmt:message key="menuimmo"/></a></li>
                <li class="nav-item"><a href="contact">Contact</a></li>
                <li class="nav-item"><a href="login">Login</a></li>
            </ul>
        </nav>
    </div>
</header>
