<%--
  Created by IntelliJ IDEA.
  User: mecosse
  Date: 17/11/2016
  Time: 08:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page import="com.mon_app.beans.contact"%>
<jsp:include page="header.jsp"></jsp:include>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:setBundle basename = "ressources.td" />


<div id="domaine_annonce">
  <article class="Annonce phare">
      <div id="annonce_phare">
    <fieldset> <legend><fmt:message key="top"/></legend>
        <p>
            <fmt:message key="phare"/>
            <img src="important.jpg" alt="logo important" style="width:320px;height:100px;">
        </p>

      </div>
    </fieldset><br>
    <img src="maison.png" alt="image de maison" style="width:320px;height:200px;">
    <p>tres belle maison</p>
    <hr color="blue">
  </article>
  <article class="Véhicules">
      <div id="vehicules">
    <fieldset> <legend><fmt:message key="car"/></legend>
        <p>
            <fmt:message key="vehicules"/>
          <img src="voiture.jpg" alt="logo voiture" style="width:320px;height:100px;">
        </p>
      </div>
    </fieldset><br>
    <img src="audi.JPG" alt="image de voiture pour annonce" style="width:320px;height:200px;">
    <p>tres belle voiture</p>
    <hr color="blue">
  </article>
  <article class="Véhicules">
      <div id="immo">
    <fieldset> <legend><fmt:message key="topimmo"/></legend>
        <p>
            <fmt:message key="immo"/>
          <img src="immo.jpg" alt="logo immo" style="width:320px;height:100px;">
        </p>
      </div>
    </fieldset><br>
    <img src="la_maison_champignon.jpg" alt="image de maison pour annonce" style="width:320px;height:200px;">
    <p>tres belle maison en champigono</p>
    <hr color="blue">
  </article>
</div>
<div id="dommaine_pub_1">
  <img src="pub.jpg" alt="porte a Elvis" style="width:200px;height:600px;">
</div>
<div id="dommaine_pub_2">
  <img src="pub.jpg" alt="porte a Elvis" style="width:200px;height:600px;">
</div>
<c:foreach var="var" begin="0" end="10" step="1">
    <c:out valeur="${var}"
</c:foreach>

<jsp:include page="footer.jsp"></jsp:include>

</body>
</html>
