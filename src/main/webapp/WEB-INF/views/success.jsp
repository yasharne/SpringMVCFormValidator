<%--
  Created by IntelliJ IDEA.
  User: yashar
  Date: 9/20/16
  Time: 9:20 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>??????? ??? ??????? ??????? ?????????</title>
    <link href="<c:url value='/static/css/custom.css' />" rel="stylesheet"></link>
    <link rel="stylesheet" href="//cdn.rawgit.com/morteza/bootstrap-rtl/v3.3.4/dist/css/bootstrap-rtl.min.css">

</head>
<body>
<div class="success">
    Confirmation message : ${success}
    <br>
    We have also sent you a confirmation mail to your email address : ${student.email}.
</div>
</body>
</html>