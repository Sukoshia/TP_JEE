<%--
  Created by IntelliJ IDEA.
  User: mecosse
  Date: 17/11/2016
  Time: 08:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="header.jsp"></jsp:include>
<body>
<jsp:useBean id="Contact" class="com.mon_app.beans.contact" scope="session"></jsp:useBean>
<p>Demande prete a envoyer</p>
<%--<fieldset>--%>
    <%--<legend>email</legend>--%>
    <%--<% //out.println(request.getParameter("email")); %>--%>
    <%--<jsp:getProperty property="email" name="Contact"/>--%>
<%--</fieldset>--%>
<%--<fieldset>--%>
    <%--<legend>prenom</legend>--%>
    <%--<jsp:getProperty property="nom" name="Contact"/>--%>
<%--</fieldset>--%>
<%--<fieldset>--%>
    <%--<legend>nom</legend>--%>
    <%--<jsp:getProperty property="prenom" name="Contact"/>--%>
<%--</fieldset>--%>

<a href="mailto:matthieu.ecosse@stjodijon.com?subject=Contact depuis Ihop&body=Message de :
<jsp:getProperty property="nom" name="Contact"/> email :
<jsp:getProperty property="email" name="Contact"/> ma demande :
<jsp:getProperty property="message" name="Contact"/>">Envoyer votre message</a>


</body>
</html>
