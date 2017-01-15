<%--
  Created by IntelliJ IDEA.
  User: mecosse
  Date: 18/11/2016
  Time: 15:58
  To change this template use File | Settings | File Templates.
--%>

<%@ page import="java.util.ArrayList"%>
<%@ page import="com.mon_app.beans.contact" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<%
    // function ()
    ArrayList<contact> list = new ArrayList<>();
    for(int i = 0 ; i<9;++i){
        contact tmp = new contact(Integer.toString(i),"null","null");
        list.add(tmp);
    }

    pageContext.setAttribute("liste", list);
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<jsp:include page="WEB-INF/header.jsp"></jsp:include>
<body>
<jsp:useBean id="liste" class="java.util.ArrayList" scope="page"/>

Pour chaque :</br>
<c:forEach var="var" begin="0" end="10" step="1">
    <c:out value="${var}"/></br>
</c:forEach>



</body>
</html>
