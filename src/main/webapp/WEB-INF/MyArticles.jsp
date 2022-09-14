<%--
  Created by IntelliJ IDEA.
  User: armen
  Date: 01.09.2022
  Time: 16:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div class="add-article">
    <form id="addArticle" class="input-group" action="add-article" method="post">
        <label for="add_article_title"> Title:<input type="text" class="input-field" name="add_article_title"
                                                     id="add_article_title"></label><br>
        <label for="add_article_content"> Content: <textarea class="input-field" name="add_article_content"
                                                             id="add_article_content"></textarea></label><br>
        <button type="submit" class="submit-btn">Add Article</button>
    </form>
</div>
</body>
</html>
