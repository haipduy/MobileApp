<%-- 
    Document   : detailProduct
    Created on : 28-Apr-2018, 09:21:49
    Author     : PDH
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="bootstrap4/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="style/login.css" rel="stylesheet" type="text/css"/>
        <link href="style/viewAllProduct.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div class="container" >
            <div class="row">
                <div class="col-md-4">
                    <img src="imagess/gsm-arena.png" alt="" style="width: 80%; height: 70px;"/>
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
            <div class="container">
            <s:iterator var="dtodetail" value="%{listdetail}">
                <div class="row" style="margin-top: 50px;">
                    <div class="col-md-5" >
                        <h3><s:property value="%{#dtodetail.itemName}"/></h3>
                        <p>
                            <span id="price"><s:property value="%{#dtodetail.priceSale}"/>00.000VND</span><br/>
                            <strike id="price-km"> <s:property value="%{#dtodetail.price}"/>00.000VND</strike>
                        </p>
                        <img src="<s:property value="%{#dtodetail.image}"/>" style="margin-top: 30px;" />

                    </div>
                    <div class="col-md-7">
                        <h5>Thông số kỹ thuật:</h5>
                        <table class="table" id="table1">
                            <tbody>

                                <tr>
                                    <td>Technology</td>
                                    <td><s:property value="%{#dtodetail.technology}"/></td>
                                </tr>
                                <tr>
                                    <td>Announced</td>
                                    <td><s:property value="%{#dtodetail.announced}"/></td>
                                </tr>

                                <tr>
                                    <td>Dimensions</td>
                                    <td><s:property value="%{#dtodetail.dimensions}"/></td>
                                </tr>
                                <tr>
                                    <td>SIM</td>
                                    <td><s:property value="%{#dtodetail.sim}"/></td>
                                </tr>
                                <tr>
                                    <td>Type</td>
                                    <td><s:property value="%{#dtodetail.type}"/></td>
                                </tr>
                                <tr>
                                    <td>Size</td>
                                    <td><s:property value="%{#dtodetail.size}"/></td>
                                </tr>
                                <tr>
                                    <td>Resolution</td>
                                    <td><s:property value="%{#dtodetail.resolution}"/></td>
                                </tr>
                                <tr>
                                    <td>Protection</td>
                                    <td><s:property value="%{#dtodetail.protection}"/></td>
                                </tr>
                                <tr>
                                    <td>OS</td>
                                    <td><s:property value="%{#dtodetail.OS}"/></td>
                                </tr>
                                <tr>
                                    <td>CPU</td>
                                    <td><s:property value="%{#dtodetail.CPU}"/></td>
                                </tr>
                                <tr>
                                    <td>GPU</td>
                                    <td><s:property value="%{#dtodetail.GPU}"/></td>
                                </tr>
                                <tr>
                                    <td>Internal</td>
                                    <td><s:property value="%{#dtodetail.internal}"/></td>
                                </tr>
                                <tr>
                                    <td>Primary</td>
                                    <td><s:property value="%{#dtodetail.cameraPri}"/></td>
                                </tr>
                                <tr>
                                    <td>Secondary</td>
                                    <td><s:property value="%{#dtodetail.cameraSec}"/></td>
                                </tr>
                                <tr>
                                    <td>Battery</td>
                                    <td><s:property value="%{#dtodetail.battery}"/></td>
                                </tr>

                            </tbody>
                        </table>
                    </div>
                </div>
            </s:iterator>
        </div>

        <script src="bootstrap4/js/jquery-3.2.1.min.js" type="text/javascript"></script>
        <script src="bootstrap4/js/bootstrap.min.js" type="text/javascript"></script>
    </body>
</html>
