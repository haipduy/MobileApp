<%-- 
    Document   : viewCart
    Created on : 18-Apr-2018, 23:34:21
    Author     : PDH
--%>

<%@page import="com.opensymphony.xwork2.ActionContext"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cart</title>
        <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">
        <link href="bootstrap4/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="style/login.css" rel="stylesheet" type="text/css"/>
        <link href="style/viewcart.css" rel="stylesheet" type="text/css"/>
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
    <div class="container" >
    <s:if test="%{#session.CART != null}">
        <table class="table table-bordered" class="showcart">
            <thead>
                <tr >
                    <th class="showcart">No.</th>
                    <th class="showcart">Image</th>
                    <th class="showcart">Product Name</th>
                    <th class="showcart">Quantity</th>
                    <th class="showcart">Price</th>
                    <th class="showcart">Amount</th>
                    <th class="showcart">Remove</th>
                    <th class="showcart">Update</th>
                </tr>
            </thead>
            <tbody>
                <s:iterator var="item" value="%{#session.CART.items}" status="counter">
                    <s:form action="updateCart"  theme="simple">
                        <tr>
                            <td class="showcart">
                                <s:property value="%{#counter.count}"/>
                            </td>
                            <td >
                                <img src="<s:property value="%{#item.value.image}"/>" alt="" id="imageP"/>
                            </td>
                            <td>
                                <s:property value="%{#item.value.itemName}"/>
                            </td>
                            <td class="showcart">
                                <s:textfield name="quantity" value="%{#item.value.quantity}"/>
                            </td>
                            <td class="showcart">
                                <s:property value="%{#item.value.priceSale}"/>00.000
                            </td>
                            <td class="showcart">
                                <s:property value="%{#item.value.quantity * #item.value.priceSale}"/>00.000
                            </td>
                            <td class="showcart">
                                <s:url action="removeCart" id="deleteLink">
                                    <s:param name="itemID" value="%{#item.value.itemID}"/>
                                </s:url>
                                <s:a href="%{deleteLink}">remove</s:a>
                                </td>
                                <td>
                                <s:hidden name="itemID" value="%{#item.value.itemID}"/>
                                <button type="submit" class="btn btn-success">Update</button>
                            </td>
                        </tr>

                    </s:form>
                </s:iterator>
            </tbody>
        </table>
        <div class="container">
            <div class="row">
                <div class="col-md-12" >
                    Tong tien thanh toan:
                    <s:property value="%{#session.CART.total()}" />00.000 VND
                </div>
            </div>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-md-12" >
                    <a href="dathang.jsp">Tien hanh dat hang</a>
                </div>
            </div>
        </div>

    </s:if>
    <s:if test="%{#session.CART == null}">
        <h4>No cart is existed!!</h4>
    </s:if>
</div>


<script src="bootstrap4/js/jquery-3.2.1.min.js" type="text/javascript"></script>
<script src="bootstrap4/js/bootstrap.min.js" type="text/javascript"></script>
</body>
</html>
