<%--
  Created by IntelliJ IDEA.
  User: mecosse
  Date: 24/11/2016
  Time: 18:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="Contact" class="com.mon_app.beans.contact" scope="session"></jsp:useBean>
<jsp:include page="header.jsp"></jsp:include>
<html>
<head>
    <title>Accès restreint</title>
</head>
<body>
    <p>Vous êtes connecté(e) avec l'adresse ${Contact.email}, vous avez bien accès à l'espace restreint.<a href="admin/*">Mon compte</a></p>
</body>
<jsp:include page="footerRestreint.jsp"></jsp:include>
</html>
