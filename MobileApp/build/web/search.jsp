<%-- 
    Document   : search
    Created on : 22-Apr-2018, 19:40:18
    Author     : PDH
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Search Page</title>
        <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">
        <link href="bootstrap4/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="style/login.css" rel="stylesheet" type="text/css"/>
        <link href="style/viewAllProduct.css" rel="stylesheet" type="text/css"/>
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
        <s:form action="searchProduct">
            <input type="text" name="searchValue" value="" id="search"  placeholder="Enter search value..."/>
            <button type="submit" class="btn">Search</button>
        </s:form>
    </div>
    <div class="container">
        <s:if test="%{!searchValue.isEmpty()}">
            <s:if test="%{listsearch != null}">
                <s:iterator var="dtosearch" value="%{listsearch}" status="counter">
                    <s:form action="addToCartUser" theme="simple">
                        <div class="col-md-3" style="float: left; margin: 20px 0 20px 0;">
                            <div id="product">
                                <div class="img-phone">
                                    <img src="<s:property value="%{#dtosearch.image}"/>" alt=""/>
                                </div>
                                <p>
                                    <span id="title"><s:property value="%{#dtosearch.categoryName}"/></span><br>
                                    <span class="nameitem"><s:property value="%{#dtosearch.itemName}"/></span><br/>
                                    <span id="price"><s:property value="%{#dtosearch.priceSale}"/>00.000VND</span><br/>
                                <strike id="price-km"> <s:property value="%{#dtosearch.price}"/>00.000VND</strike>
                                </p>
                                <s:url var="viewDetailLink" action="viewDetailProduct">
                                    <s:param name="pk" value="%{#dtosearch.itemID}"/>
                                </s:url>
                                <s:a  href="%{viewDetailLink}" id="view">detail</s:a>

                                <s:hidden name="item" value="%{#dtosearch.itemID}"/>
                                <button type="submit" value="AddToCart" class="btn btn-info">Add to Cart</button>
                            </div>
                        </div>

                    </s:form>
                </s:iterator>
            </s:if>'<s:if test="%{listsearch == null}">
                <h2>No result</h2>
            </s:if>
        </s:if>

    </div>


    <script src="bootstrap4/js/jquery-3.2.1.min.js" type="text/javascript"></script>
    <script src="bootstrap4/js/bootstrap.min.js" type="text/javascript"></script>
</body>
</html>
