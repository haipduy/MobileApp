<%-- 
    Document   : managerOrder
    Created on : 26-Apr-2018, 00:44:08
    Author     : PDH
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Manager order</title>
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
        <s:if test="%{listOrder != null}">
            <table class="table table-bordered table-sm">
                <thead>
                    <tr>
                        <th>No.</th>
                        <th>User ID</th>
                        <th>Full Name</th>
                        <th>Total</th>
                        <th>Phone</th>
                        <th>Email</th>
                        <th>Address</th>
                        <th>Notes</th>
                        <th>Detail</th>
                        <th>Delete</th>
                    </tr>
                </thead>
                <tbody>
                    <s:iterator var="dto" value="%{listOrder}" status="counter">
                        <s:form action="updateStatus" theme="simple">

                            <tr>
                                <td>
                                    <s:property value="%{#counter.count}"/>
                                </td>
                                <td>
                                    <s:property value="%{#dto.userID}"/>
                                </td>
                                <td>
                                    <s:property value="%{#dto.fullName}"/>
                                </td>
                                <td>
                                    <s:property value="%{#dto.total}"/>00.000 VND
                                </td>
                                <td>
                                    <s:property value="%{#dto.phone}"/>
                                </td>
                                <td>
                                    <s:property value="%{#dto.email}"/>
                                </td>
                                <td>
                                    <s:property value="%{#dto.address}"/>
                                </td>
                                <td style="width: 200px;">
                                    <s:property value="%{#dto.notes}"/>
                                </td>
                                <td>
                                    <s:url var="detail" action="detailOrder">
                                        <s:param name="hdID" value="%{#dto.hdID}"/>
                                    </s:url>
                                    <s:a href="%{detail}">View</s:a>
                                    </td>
                                    <td>
                                    <s:hidden name="hdID" value="%{#dto.hdID}"/>
                                    <button type="submit" class="btn btn-primary">Da giao</button>
                                    </td>
                                </tr>
                        </s:form>

                    </s:iterator>
                </tbody>
            </table>

        </s:if>
        <s:if test="%{listOrder==null}">
            <h2>No record matched!</h2>
        </s:if>
    </div>
    <script src="bootstrap4/js/jquery-3.2.1.min.js" type="text/javascript"></script>
    <script src="bootstrap4/js/bootstrap.min.js" type="text/javascript"></script>
</body>
</html>
