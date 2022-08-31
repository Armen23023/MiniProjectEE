<%--
  Created by IntelliJ IDEA.
  User: armen
  Date: 26.08.2022
  Time: 21:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Home MiniProject</title>
    <link rel="stylesheet" href="Home.css">
</head>
<body>
<div class="hero">
    <div class="form-box">
        <div class="button-box">
            <div id="btn"></div>
            <button type="button" class="toggle-btn" onclick="login()">Log In</button>
            <button type="button" class="toggle-btn" onclick="register()">Register</button>
        </div>
        <div class="social-icons">
            <img src="login-reg-img/fb.png">
            <img src="login-reg-img/tw.png">
            <img src="login-reg-img/gp.png">
        </div>
        <form id="login" class="input-group" action="login" method="post">
            <label for="log_email">  <input type="text" class="input-field" placeholder="User Email" name="log_email" id="log_email" placeholder="User email"required></label><br>
            <label for="log_password"> <input type="text" class="input-field" placeholder="Enter Password" name="log_password" id="log_password" required></label><br>
            <input type="checkbox" class="check-box"><span>Remember Password</span>

            <% if (request.getParameter("log_error")!=null) { %>
            <div class="input-row log-error"><%=request.getParameter("log_error")%></div>
            <% } %>

            <button type="submit" class="submit-btn">Log In</button>
        </form>

        <form id="register" class="input-group" action="register"  method="post">
               <label for="reg_name">  <input type="text" class="input-field" name="reg_name" autocomplete="off" id="reg_name" placeholder="User name" required></label><br>
               <label for="reg_surname"> <input type="text" class="input-field" name="reg_surname" id="reg_surname" placeholder="User surname" required></label><br>
               <label for="reg_age">  <input type="number" class="input-field"  name="reg_age" id="reg_age" placeholder="User age" required></label><br>
               <label for="reg_email">  <input type="text" class="input-field" name="reg_email" id="reg_email" placeholder="User email" required></label><br>
               <label for="reg_phone_number">  <input type="text" class="input-field" name="reg_phone_number" id="reg_phone_number" placeholder="Phone" required></label><br>
               <label for="reg_password">  <input type="password" class="input-field" name="reg_password" id="reg_password"  placeholder="password"></label><br>
               <label for="reg_gender"> <select name="reg_gender" class="input-field" id="reg_gender">
                    <option value="MALE">Male</option>
                    <option value="FEMALE">Female</option>
                    <option value="OTHER">Other</option>
                </select></label><br>
                <input type="checkbox" class="check-box"><span>I agree to the terms &
                conditions</span>

                <% if (request.getParameter("reg_error")!=null) { %>
                <div class="input-row reg-error"><%=request.getParameter("reg_error")%></div>
                <% } %>

            <div class="input-row"><button type="submit" class="submit-btn">Registration</button></div>
            </form>
    </div>
</div>

    <script>
        var x = document.getElementById("login");
        var y = document.getElementById("register");
        var z = document.getElementById("btn");

        function register(){
            x.style.left = "-400px";
            y.style.left = "50px";
            z.style.left = "110px";
        } function login(){
            x.style.left = "50px";
            y.style.left = "450px";
            z.style.left = "0";
        }

    </script>

</body>
</html>