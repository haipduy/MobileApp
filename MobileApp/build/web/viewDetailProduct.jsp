<%-- 
    Document   : viewDetailProduct
    Created on : 18-Apr-2018, 02:43:26
    Author     : PDH
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View Detail</title>
        <link href="bootstrap4/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="style/login.css" rel="stylesheet" type="text/css"/>
        <link href="style/viewdetail.css" rel="stylesheet" type="text/css"/>
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
        <!--show detail-->
    <s:iterator var="dtodetail" value="%{listdetail}">

        <div class="container">
            <h3>
                <s:property value="%{#dtodetail.itemName}"/>
            </h3>
            <hr>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-md-6" >
                    <img src="<s:property value="%{#dtodetail.image}"/>" alt="" id="image-detal"/>
                </div>
                <div class="col-md-6">
                    <p id="pricesalse">
                        <s:property value="%{#dtodetail.priceSale}"/>00.000 Vnd
                    </p>
                    <img src="imagess/detail-km.PNG" alt=""/>
                </div>
            </div>
        </div>
        <div class="container" style="padding-top: 20px; padding-bottom: 20px;">
            <hr>
        </div>

        <div class="container">
            <div class="row">
                <div class="col-md-8">
                    <h4 id="titlte">Đặc điểm nổi bật của Samsung Galaxy S9+ 128GB</h4>
                    <img src="imagess/s9plus.gif" alt="" id="imagegif" style="padding-bottom: 20px;"/>
                    <h5 style="padding-bottom: 20px;">
                        <span class="TITLE">Samsung Galaxy S9 Plus 128GB</span>, siêu phẩm smartphone hàng đầu trong thế giới 
                        Android đã ra mắt với màn hình vô cực, camera chuyên nghiệp như máy ảnh và 
                        hàng loạt những tính năng cao cấp đầy hấp dẫn.
                    </h5>
                    <h5 style="padding-bottom: 20px;">
                        Thiết kế hoàn thiện hơn
                    </h5>
                    <p style="padding-bottom: 20px;">
                        "Màn hình vô cực" trên Samsung S9 Plus được làm mỏng hơn ở các cạnh viền cho trải nghiệm sử dụng ấn tượng hơn, kích thước máy thu gọn lại giúp cầm nắm sử dụng thuận tiện.
                    </p>
                    <img src="imagess/s9plus2.jpg" alt="" id="imagegif"/>
                </div>
                <div class="col-md-4">
                    <h5>Thông số kỹ thuật:</h5>
                    <table class="table" id="table1">
                        <tbody>

                            <tr>
                                <td>Technology</td>
                                <td><s:property value="%{#dtodetail.technology}"/></td>                                   </td>
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
        </div>
    </s:iterator>
    <script src="bootstrap4/js/jquery-3.2.1.min.js" type="text/javascript"></script>
    <script src="bootstrap4/js/bootstrap.min.js" type="text/javascript"></script>
</body>
</html>
