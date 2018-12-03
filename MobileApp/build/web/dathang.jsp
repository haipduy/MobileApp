<%-- 
    Document   : dathang
    Created on : 22-Apr-2018, 15:18:44
    Author     : PDH
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Dat hang</title>
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
<s:form action="submitDonHang" theme="simple">
    <div class="container" >
        <div class="row">
            <div class="col-md-4">
                <div  style="border: 1px solid #dee2e6;">
                    <p style="font-size: 20px; padding-top: 20px; padding-left: 20px;">Đơn hàng của Quý khách</p>
                    <table class="table">
                        <tbody>
                            <s:iterator var="item" value="%{#session.CART.items}">
                                <tr>
                                    <td style="width: 25%;">
                                        <img src="<s:property value="%{#item.value.image}"/>" alt="" id="imageViewCart"/>
                                    </td>
                                    <td style="width: 35%;">
                                        <s:property value="%{#item.value.itemName}"/><br/>
                                        <span style="font-size: 13px; color: red;">
                                            x <s:property value="%{#item.value.quantity}"/> san pham
                                        </span>
                                    </td>
                                    <td style="width: 40%;">
                                        <s:property value="%{#item.value.priceSale}"/>00.000 VND
                                        <s:hidden name="itemID" value="%{#item.value.itemID}"/>
                                    </td>
                                </tr>
                            </s:iterator>
                            <tr>
                                <td colspan="2">
                                    Tổng giá trị đơn hàng:
                                </td>
                                <td style="font-size: 16px; color: red;">
                                    <s:property value="%{#session.CART.total()}" />00.000 VND
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    Số tiền phải thanh toán:
                                </td>
                                <td style="font-size: 16px; color: red;">
                                    <s:property value="%{#session.CART.total()}" />00.000 VND
                                    <s:hidden name="total" value="%{#session.CART.total()}"/>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
            <div class="col-md-8">
                <div  style="border: 1px solid #dee2e6;">
                    <p style="font-size: 20px; padding-top: 20px; padding-left: 20px;">Thông tin đặt hàng</p>
                    <hr>
                    <div class="container-fluid">
                        <div class="form-group">
                            <label class="control-label col-md-8">Họ và tên:</label>
                            <div class="col-md-12">
                                <input type="text" name="fullname" class="form-control" placeholder="Ví dụ: Nguyễn Văn Nam">
                            </div>
                            <s:if test="%{#session.DATHANG!=null}">
                                <font color = "red" style="margin-left: 70px;">
                                <s:property value="%{#session.DATHANG.fullNameErr}"/>
                                </font>
                            </s:if>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-md-8">Số điện thoại :</label>
                            <div class="col-md-12">
                                <input type="text" name="phone" class="form-control" placeholder="Ví dụ: 0968688688">
                            </div>
                            <s:if test="%{#session.DATHANG!=null}">
                                <font color = "red" style="margin-left: 70px;">
                                <s:property value="%{#session.DATHANG.phoneErr}"/>
                                </font>
                            </s:if>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-md-8">Email:</label>
                            <div class="col-md-12">
                                <input type="text" name="email" class="form-control" placeholder="Ví dụ: nguyenvannam@gmail.com">
                            </div>
                            <s:if test="%{#session.DATHANG!=null}">
                                <font color = "red" style="margin-left: 70px;">
                                <s:property value="%{#session.DATHANG.emailErr}"/>
                                </font>
                            </s:if>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-md-8">Địa chỉ nhận hàng:</label>
                            <div class="col-md-12">
                                <input type="text" name="address" class="form-control" placeholder="Số nhà, đường, phường/xã...">
                            </div>
                            <s:if test="%{#session.DATHANG!=null}">
                                <font color = "red" style="margin-left: 70px;">
                                <s:property value="%{#session.DATHANG.addressErr}"/>
                                </font>
                            </s:if>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-md-8">Ghi chú:</label>
                            <textarea name="notes" class="form-control col-md-12" rows="5" placeholder="Lời nhắn chi tiết. Ví dụ: giao trong giờ hành chính"></textarea>
                        </div>
                    </div>
                    <div class="row" style="padding-bottom: 40px; padding-top: 20px; margin-left: 35%;">
                        <s:hidden name="userID" value="%{#session.USERID}"/>
                        <button type="submit" vclass="btn btn-warning">Đồng ý và Đặt hàng</button>
                    </div>
                </div>

            </div>
        </div>
    </div>
</s:form>





<script src="bootstrap4/js/jquery-3.2.1.min.js" type="text/javascript"></script>
<script src="bootstrap4/js/bootstrap.min.js" type="text/javascript"></script>

</body>
</html>
