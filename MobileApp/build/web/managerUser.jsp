<%-- 
    Document   : managerUser
    Created on : 17-Apr-2018, 15:35:39
    Author     : PDH
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Manager User</title>
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
        <h3>All User is Active!</h3>
        <p></p>
        <s:if test="%{list!=null}">
            <table class="table table-bordered table-sm" id="mytbl">
                <thead>
                    <tr>
                        <th>No.</th>
                        <th>User ID</th>
                        <th>First Name</th>
                        <th>Last Name</th>
                        <th>Email</th>
                        <th>Phone</th>
                        <th>Role Name</th>
                        <th>Delete</th>
                    </tr>
                </thead>
                <tbody>
                    <s:iterator var="dto" value="%{list}" status="counter">
                        <s:form action="updatePassUser" theme="simple">

                            <tr>
                                <td>
                                    <s:property value="%{#counter.count}"/>
                                </td>
                                <td>
                                    <s:property value="%{#dto.username}"/>
                                </td>
                                <td>
                                    <s:property value="%{#dto.firstName}"/>
                                </td>
                                <td>
                                    <s:property value="%{#dto.lastName}"/>
                                </td>
                                <td>
                                    <s:property value="%{#dto.email}"/>
                                </td>
                                <td>
                                    0<s:property value="%{#dto.phone}"/>
                                </td>
                                <td>
                                    <s:property value="%{#dto.roleName}"/>
                                </td>
                                <td>
                                    <s:url var="deleteLink" action="deleteRecordUser">
                                        <s:param name="pk" value="%{#dto.username}"/>
                                    </s:url>
                                    <s:a  href="%{deleteLink}">Delete</s:a>
                                    </td>
                                </tr>
                        </s:form>
                    </s:iterator>
                </tbody>
            </table>

        </s:if>
        <s:if test="%{list==null}">
            <h2>No record matched!</h2>
        </s:if>
    </div>

    <script src="bootstrap4/js/jquery-3.2.1.min.js" type="text/javascript"></script>
    <script src="bootstrap4/js/bootstrap.min.js" type="text/javascript"></script>
    <script>
            $(document).ready(function() {
		$('#mytbl').dataTable();
	});
        </script>
</body>
</html>
