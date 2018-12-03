<%-- 
    Document   : viewAllProduct
    Created on : 19-Apr-2018, 00:49:38
    Author     : PDH
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View All Product</title>
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
    </div>
    <!--show all product-->
<s:if test="%{list != null}">
    <s:iterator var="dto" value="%{list}" status="counter">
        <s:form action="addToCartUser" theme="simple">
            <div class="container">
                <div class="col-md-3" style="float: left; margin: 20px 0 20px 0; box-sizing: border-box;">
                    <div id="product">
                        <div class="img-phone">
                            <img src="<s:property value="%{#dto.image}"/>" alt=""/>
                        </div>
                        <p>
                            <span id="title"><s:property value="%{#dto.categoryName}"/></span><br>
                            <span class="nameitem"><s:property value="%{#dto.itemName}"/></span><br/>
                            <span id="price"><s:property value="%{#dto.priceSale}"/>00.000VND</span><br/>
                        <strike id="price-km"> <s:property value="%{#dto.price}"/>00.000VND</strike>
                        </p>
                        <s:url var="viewDetailLink" action="viewDetailProduct">
                            <s:param name="pk" value="%{#dto.itemID}"/>
                        </s:url>
                        <s:a  href="%{viewDetailLink}" id="view">detail</s:a>

                        <s:hidden name="item" value="%{#dto.itemID}"/>
                        <button type="submit" value="AddToCart" class="btn btn-info">Add to Cart</button>
                    </div>
                </div>
            </div>
        </s:form>
    </s:iterator>
</s:if>
<script src="bootstrap4/js/jquery-3.2.1.min.js" type="text/javascript"></script>
<script src="bootstrap4/js/bootstrap.min.js" type="text/javascript"></script>
</body>
</html>
