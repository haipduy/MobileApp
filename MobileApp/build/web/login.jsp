<%-- 
    Document   : login
    Created on : 27-Apr-2018, 10:29:16
    Author     : PDH
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Login</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="bootstrap4/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="style/login.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div class="login">
            <img src="imagess/gsmarena-logo.png" alt="" width="auto" height="auto"/>
            <form action="login" method="POST">
                <input type="text" class="form-control" placeholder="Username" name="username">
                <s:if test="%{#session.INVALID!=null}">
                    <font color = "red" style="margin-left: 70px;">
                    <s:property value="%{#session.INVALID.usernameERR}"/>
                    </font>
                </s:if>
                <input type="password" class="form-control" placeholder="Password" name="password">
                <s:if test="%{#session.INVALID!=null}">
                    <font color = "red" style="margin-left: 70px;">
                    <s:property value="%{#session.INVALID.passwordERR}"/>
                    </font>
                </s:if>
                
                <button type="submit" class="btn btn-primary">Login</button>
                <p class="create">
                    Don't have an account? <a href="createNewUser.jsp"> Creat One </a>
                </p>
            </form>
        </div>


        <script src="bootstrap4/js/jquery-3.2.1.min.js" type="text/javascript"></script>
        <script src="bootstrap4/js/bootstrap.min.js" type="text/javascript"></script>
    </body>

</html>

