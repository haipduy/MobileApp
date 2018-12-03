<%-- 
    Document   : detailOrder
    Created on : 26-Apr-2018, 01:09:14
    Author     : PDH
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Detail order</title>
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
                        <s:a action="managerUser">Manger Users</s:a>
                        <s:a action="managerProduct">Manger Product</s:a>
                        <s:a action="managerOrder">Manger Order</s:a>
                        </div>
                    </div>
                    <div class="col-md-2">
                        <div class="navbar1">
                        <s:a action="logout">Logout</s:a>
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
    <div class="container">
        <s:if test="%{listCtdh != null}">
            <table class="table table-bordered table-sm">
                <thead>
                    <tr>
                        <th>No.</th>
                        <th>Item ID</th>
                        <th>Item Name</th>
                        <th>Image</th>
                        <th>Quantity</th>
                        <th>Price</th>

                    </tr>
                </thead>
                <tbody>
                    <s:iterator var="dto" value="%{listCtdh}" status="counter">
                        <tr>
                            <td>
                                <s:property value="%{#counter.count}"/>
                            </td>
                            <td>
                                <s:property value="%{#dto.itemID}"/>
                            </td>
                            <td>
                                <s:property value="%{#dto.itemName}"/>
                            </td>
                            <td style="width: 120px;">
                                <img src="<s:property value="%{#dto.image}"/>"  style="width: 100%; height: auto"/>
                            </td>
                            <td>
                                <s:property value="%{#dto.quantity}"/>
                            </td>
                            <td>
                                <s:property value="%{#dto.price}"/>00.000 VND
                            </td>
                        </tr>
                    </s:iterator>
                </tbody>
            </table>

        </s:if>
    </div>

    <script src="bootstrap4/js/jquery-3.2.1.min.js" type="text/javascript"></script>
    <script src="bootstrap4/js/bootstrap.min.js" type="text/javascript"></script>
</body>
</html>
