<%-- 
    Document   : dangky
    Created on : Oct 28, 2020, 11:39:48 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Login</title>
    </head
    
    
     <div style="color: #ee3148">${messs}</div> 
    <body>
        <H1>Login</H1>
        <form action="${pageContext.request.contextPath}/admin/login.htm" method="post">
            <div class="form-group">
                <label for="username">username:</label>
                <input type="text" class="form-control"  name="username" id="">
            </div>
            <div class="form-group">
                <label for="email">password:</label>
                <input type="password" class="form-control"  name="password" id="">
            </div>
            <div class="form-group">
                <button type="submit" class="btn btn-success" > Login</button>
            </div>
        </form>
    </body>
</html>

