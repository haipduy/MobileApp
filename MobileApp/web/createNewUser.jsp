<%-- 
    Document   : createNewUser
    Created on : 17-Apr-2018, 21:12:09
    Author     : PDH
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>New User</title>
        <link href="bootstrap4/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="style/login.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <s:form action="createNewUser">
            <div class="container py-5">
                <div class="row">
                    <div class="col-md-12">
                        <h2 class="text-center mb-5">
                            <img src="imagess/gsmarena-logo.png" alt="" style="width: auto; height: auto"/>
                        </h2>
                        <div class="row">
                            <div class="col-md-6 mx-auto">
                                <div class="card border-secondary">
                                    <div class="card-header">
                                        <h3 class="mb-0 my-2">Sign Up</h3>
                                    </div>
                                    <div class="card-body">
                                        <form class="form" role="form" autocomplete="off">
                                            <div class="form-group">
                                                <label for="inputName">User Name</label>
                                                <input type="text" name="userID" class="form-control" placeholder="Username...">
                                                <s:if test="%{#session.INVALIDNEW!=null}">
                                                    <font color = "red">
                                                    <s:property value="%{#session.INVALIDNEW.userIDErr}"/>
                                                    <s:property value="%{#session.INVALIDNEW.duplicateIDErr}"/>
                                                    </font>
                                                </s:if>
                                            </div>
                                            <div class="form-group">
                                                <label>Password:</label>
                                                <input type="password" name="password" class="form-control" placeholder="password...">
                                                <s:if test="%{#session.INVALIDNEW!=null}">
                                                    <font color = "red">
                                                    <s:property value="%{#session.INVALIDNEW.passwordErr}"/>
                                                    </font>
                                                </s:if>
                                            </div>
                                            <div class="form-group">
                                                <label>Confirm</label>
                                                <input type="password" name="confirm" class="form-control" placeholder="password again...">
                                                <s:if test="%{#session.INVALIDNEW!=null}">
                                                    <font color = "red">
                                                    <s:property value="%{#session.INVALIDNEW.confirmErr}"/>
                                                    </font>
                                                </s:if>
                                            </div>

                                            <div class="form-group">
                                                <label>First name:</label>
                                                <input type="text" name="firstName" class="form-control" placeholder="firstname...">
                                                <s:if test="%{#session.INVALIDNEW!=null}">
                                                    <font color = "red">
                                                    <s:property value="%{#session.INVALIDNEW.firstNameErr}"/>
                                                    </font>
                                                </s:if>
                                            </div>
                                            <div class="form-group">
                                                <label>Last name:</label>
                                                <input type="text" name="lastName" class="form-control" placeholder="lastname...">
                                                <s:if test="%{#session.INVALIDNEW!=null}">
                                                    <font color = "red">
                                                    <s:property value="%{#session.INVALIDNEW.lastNameErr}"/>
                                                    </font>
                                                </s:if>
                                            </div>
                                            <div class="form-group">
                                                <label>Email:</label>
                                                <input type="text" name="email" class="form-control" placeholder="Email...">
                                                <s:if test="%{#session.INVALIDNEW!=null}">
                                                    <font color = "red">
                                                    <s:property value="%{#session.INVALIDNEW.emailErr}"/>
                                                    </font>
                                                </s:if>
                                            </div>
                                            <div class="form-group">
                                                <label>Phone:</label>
                                                <input type="text" name="phone" class="form-control" placeholder="Phonenumber...">
                                                <s:if test="%{#session.INVALIDNEW!=null}">
                                                    <font color = "red">
                                                    <s:property value="%{#session.INVALIDNEW.phoneErr}"/>
                                                    </font>
                                                </s:if>
                                            </div>
                                            <div class="form-group">
                                                <label>Birth Date:</label>
                                                <input type="text" name="birthDate" class="form-control" placeholder="Input phone number...">
                                                <s:if test="%{#session.INVALIDNEW!=null}">
                                                    <font color = "red">
                                                    <s:property value="%{#session.INVALIDNEW.birthDateErr}"/>
                                                    </font>
                                                </s:if>
                                            </div>
                                            <div class="form-check">
                                                <label class="form-check-label">
                                                    <input class="form-check-input" type="checkbox"> Remember me
                                                </label>
                                            </div>
                                            <div class="form-group">
                                                <button type="submit" class="btn btn-success btn-lg float-right">Register</button>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!--/row-->
                    </div>
                    <!--/col-->
                </div>
                <!--/row-->
            </div>
            <!--/container-->
        </s:form>

        <script src="bootstrap4/js/jquery-3.2.1.min.js" type="text/javascript"></script>
        <script src="bootstrap4/js/bootstrap.min.js" type="text/javascript"></script>
    </body>
</html>
