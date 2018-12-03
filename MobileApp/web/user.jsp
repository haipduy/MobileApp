<%-- 
    Document   : user
    Created on : 17-Apr-2018, 13:56:56
    Author     : PDH
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User Page</title>
        <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">
        <link href="bootstrap4/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="style/login.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div class="container">
            <div class="row">
                <div class="col-md-4">
                    <img src="imagess/gsm-arena.png" alt="" width="80%" height="70px"/>
                </div>

                <div class="col-md-6">
                    <div class="navbar">
                        <a href="user.jsp" id="home">Home</a>
                        <a href="search.jsp">Search</a>
                        <s:a action="showAllProduct">All Phone</s:a>
                            <a href="#tablet">Tablet</a>
                            <a href="#laptop">Laptop</a>
                        </div>
                    </div>
                    <div class="col-md-2">
                        <div class="navbar1">
                        <s:a action="logout">Logout</s:a>
                        <s:a href="viewCart">Cart</s:a>
                        </div>
                    </div>

                </div>
            </div>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="welcom">
                        Welcome, <s:property value="%{#session.USER}"/>
                </div>
            </div>
        </div>
    </div>
                
                
    <script src="bootstrap4/js/jquery-3.2.1.min.js" type="text/javascript"></script>
    <script src="bootstrap4/js/bootstrap.min.js" type="text/javascript"></script>
</body>
</html>
