<%-- 
    Document   : managerProduct
    Created on : 24-Apr-2018, 13:28:06
    Author     : PDH
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Manager Product</title>
        <link href="bootstrap4/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="style/login.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div class="container" >
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
        <div class="container" style="margin-bottom: 60px;">
            <form action="getCategory">
                <button type="submit" class="btn btn-primary" style="float: right">Add New Item</button>
            </form>

        </div>

    <s:if test="%{listproduct != null}">
        <div class="container">
            <table class="table table-bordered">
                <thead>
                    <tr>
                        <th>No.</th>
                        <th>Item ID</th>
                        <th>Cartegory Name</th>
                        <th>Item Name</th>
                        <th>Image</th>
                        <th>Quantity</th>
                        <th>Price</th>
                        <th>Price Sale</th>
                        <th>Detail</th>
                        <th>Delete</th>
                    </tr>
                </thead>
                <tbody>
                    <s:iterator var="dto" value="%{listproduct}" status="counter">
                        <tr>
                            <td>
                                <s:property value="%{#counter.count}"/>
                            </td>
                            <td>
                                <s:property value="%{#dto.itemID}"/>
                            </td>
                            <td style="width: 100px;">
                                <s:property value="%{#dto.categoryName}"/>
                            </td>
                            <td>
                                <s:property value="%{#dto.itemName}"/>
                            </td>
                            <td style="width: 90px;">
                                <img src="<s:property value="%{#dto.image}"/>" style="width: 100px;height: auto"/>
                            </td>
                            <td>
                                <s:property value="%{#dto.quantity}"/>
                            </td>
                            <td>
                                <s:property value="%{#dto.price}"/>
                            </td>
                            <td>
                                <s:property value="%{#dto.priceSale}"/>
                            </td>
                            <td>
                                <s:url action="detailProductManager" var="detailLink">
                                    <s:param name="itemID" value="%{#dto.itemID}"/>
                                </s:url>
                                <s:a href="%{detailLink}">Detail</s:a>
                                </td>
                                <td>
                                <s:url action="deleteRecordProduct" var="deleteLink">
                                    <s:param name="itemID" value="%{#dto.itemID}"/>
                                </s:url>
                                <s:a href="%{deleteLink}">Delete</s:a>
                                </td>
                            </tr>
                    </s:iterator>

                </tbody 
        </div>
    </s:if>
    <s:else>
        <h2>No Record!</h2>
    </s:else>
    <script src="bootstrap4/js/jquery-3.2.1.min.js" type="text/javascript"></script>
    <script src="bootstrap4/js/bootstrap.min.js" type="text/javascript"></script>
</body>
</html>
