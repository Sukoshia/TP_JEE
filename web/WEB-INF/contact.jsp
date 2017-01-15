<%--
  Created by IntelliJ IDEA.
  User: mecosse
  Date: 17/11/2016
  Time: 08:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="header.jsp"></jsp:include>
<link rel="stylesheet" type="text/css" href="CSS/style_contact.css">
<body>
<div id="formulaire">
<form id="contact_form" action="contact" method="POST">
    <div class="row">
        <label for="name">Prenom:</label><br />
        <input id="name" class="input" name="name" type="text" value="" size="30" /><br />
    </div>
    <div class="row">
        <label for="name">Nom:</label><br />
        <input id="nom" class="input" name="nom" type="text" value="" size="30" /><br />
    </div>
    <div class="row">
        <label for="email">Email:</label><br />
        <input id="email" class="input" name="email" type="text" value="" size="30" /><br />
    </div>
    <div><br>
        <textarea name="message" rows=4 cols=40>Votre message</textarea>
    </div>
    <input id="submit_button" type="submit" value="Envoyer formulaire" />
</form>
</div>

</body>
<jsp:include page="footer.jsp"></jsp:include>
