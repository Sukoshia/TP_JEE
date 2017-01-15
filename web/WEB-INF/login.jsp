<%--
  Created by IntelliJ IDEA.
  User: mecosse
  Date: 08/12/2016
  Time: 09:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="header.jsp"></jsp:include>
<html>
<link rel="stylesheet" type="text/css" href="CSS/style_contact.css">
<head>
    <title>Auth page</title>
</head>
<body>
<div id="formulaire">
    <form id="contact_form" action="login" method="POST">
        <div class="row">
            <label for="email">Email:</label><br />
            <input id="email" class="input" name="email" type="text" value="" size="30" required /><br>
        </div>
        <div class="row">
            <label for="password">Password:</label><br />
            <input id="password" class="input" name="password" type="password" value="" size="30" required/><br>
        </div>
        <input id="submit_button" type="submit" value="Connect" />
    </form>
</div>

</body>
<jsp:include page="footer.jsp"></jsp:include>
</html>
