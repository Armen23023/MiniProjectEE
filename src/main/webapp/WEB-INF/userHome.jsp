<%@ page import="com.example.miniprojectee.models.User" %>
<%@ page import="java.util.List" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="com.example.miniprojectee.models.Article" %>
<%@ page import="com.example.miniprojectee.models.Comment" %><%--
  Created by IntelliJ IDEA.
  User: armen
  Date: 29.08.2022
  Time: 20:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="Home.css">

    <style>
        body {
            margin: 0;
            font-family: Arial, Helvetica, sans-serif;
        }

        .topnav {
            overflow: hidden;
            background-color: #333;
        }

        .topnav a {
            float: left;
            color: #f2f2f2;
            text-align: center;
            padding: 14px 16px;
            text-decoration: none;
            font-size: 17px;
        }
    </style>

    <title>UserHome</title>
    <style>
        table, th, td {
            border: 1px solid black;
            border-collapse: collapse;
        }
    </style>
</head>
<body>
<div class="hero">
    <div class="topnav">
        <a class="active" href="#home">    <% User currentUser = (User) request.getSession().getAttribute("currentUser");%>
            <%= currentUser.getName() %> <%= currentUser.getSurname() %></a>
        <a class="active"><form id="allArticles"  action="allArticles" method="post">
            <button type="submit" >All Articles</button>
        </form></a>

        <a class="active"><form id="myArticles"  action="myArticles" method="post">
            <button type="button"> My Articles</button>
        </form></a>

        <a class="active"> <form id="logout"  action="logout" method="post">
            <button type="submit" >Log Out</button>
        </form>
    </a>
    </div>
</div>












</body>
</html>
