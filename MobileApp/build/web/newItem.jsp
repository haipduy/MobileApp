<%-- 
    Document   : newItem
    Created on : 28-Apr-2018, 13:10:38
    Author     : PDH
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>New Item</title>
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
        <form action="newItem">
            <div class="container">
                <div class="row">
                    <div class="col-md-2"></div>

                    
                    <div class="col-md-8">
                        <h3>New Item</h3>
                        <table class="table">
                            <tbody>
                                <tr>
                                    <td>Item ID</td>
                                    <td>
                                        <input type="text" name="itemID" value="" />
                                    <s:if test="%{#session.ERRORNEWITEM !=null}">
                                        <font color="red">
                                        <s:property value="%{#session.ERRORNEWITEM.itemIDErr}"/>
                                        <s:property value="%{#session.ERRORNEWITEM.duplicateIDErr}"/>
                                        </font>
                                    </s:if>
                                </td>
                            </tr>
                            <tr>
                                <td>Category</td>
                                <td>
                                    <select name="category">
                                        <s:iterator var="item" value="%{categoryList}">
                                            <option><s:property value="%{#item.categoryName}"/></option>
                                        </s:iterator>
                                    </select>
                                </td>
                            </tr>
                            <tr>
                                <td>Item Name</td>
                                <td>
                                    <input type="text" name="itemName" value="" />
                                    <s:if test="%{#session.ERRORNEWITEM !=null}">
                                        <font color="red">
                                        <s:property value="%{#session.ERRORNEWITEM.itemNameErr}"/>
                                        </font>
                                    </s:if>
                                </td>
                            </tr>
                            <tr>
                                <td>Image</td>
                                <td>
                                    <input type="text" name="image" value="" />
                                    <s:if test="%{#session.ERRORNEWITEM !=null}">
                                        <font color="red">
                                        <s:property value="%{#session.ERRORNEWITEM.imageErr}"/>
                                        </font>
                                    </s:if>
                                </td>
                            </tr>
                            <tr>
                                <td>Price</td>
                                <td>
                                    <input type="text" name="price" value="" />
                                    <s:if test="%{#session.ERRORNEWITEM !=null}">
                                        <font color="red">
                                        <s:property value="%{#session.ERRORNEWITEM.priceErr}"/>
                                        </font>
                                    </s:if>
                                </td>
                            </tr>
                            <tr>
                                <td>Price Sale</td>
                                <td>
                                    <input type="text" name="priceSale" value="" />
                                    <s:if test="%{#session.ERRORNEWITEM !=null}">
                                        <font color="red">
                                        <s:property value="%{#session.ERRORNEWITEM.priceSaleErr}"/>
                                        </font>
                                    </s:if>
                                </td>
                            </tr>
                            <tr>
                                <td>Quantity</td>
                                <td>
                                    <input type="text" name="quantity" value="" />
                                    <s:if test="%{#session.ERRORNEWITEM !=null}">
                                        <font color="red">
                                        <s:property value="%{#session.ERRORNEWITEM.quantityErr}"/>
                                        </font>
                                    </s:if>
                                </td>
                            </tr>
                            <tr>
                                <td>Technolory</td>
                                <td>
                                    <input type="text" name="technology" value="" />
                                    <s:if test="%{#session.ERRORNEWITEM !=null}">
                                        <font color="red">
                                        <s:property value="%{#session.ERRORNEWITEM.technologyErr}"/>
                                        </font>
                                    </s:if>
                                </td>
                            </tr>
                            <tr>
                                <td>Announced</td>
                                <td>
                                    <input type="text" name="announced" value="" />
                                    <s:if test="%{#session.ERRORNEWITEM !=null}">
                                        <font color="red">
                                        <s:property value="%{#session.ERRORNEWITEM.announcedErr}"/>
                                        </font>
                                    </s:if>
                                </td>
                            </tr>
                            <tr>
                                <td>Dimensions</td>
                                <td>
                                    <input type="text" name="dimensions" value="" />
                                    <s:if test="%{#session.ERRORNEWITEM !=null}">
                                        <font color="red">
                                        <s:property value="%{#session.ERRORNEWITEM.dimensionsErr}"/>
                                        </font>
                                    </s:if>
                                </td>
                            </tr>
                            <tr>
                                <td>Sim</td>
                                <td>
                                    <input type="text" name="sim" value="" />
                                    <s:if test="%{#session.ERRORNEWITEM !=null}">
                                        <font color="red">
                                        <s:property value="%{#session.ERRORNEWITEM.simErr}"/>
                                        </font>
                                    </s:if>
                                </td>
                            </tr>
                            <tr>
                                <td>Type</td>
                                <td>
                                    <input type="text" name="type" value="" />
                                    <s:if test="%{#session.ERRORNEWITEM !=null}">
                                        <font color="red">
                                        <s:property value="%{#session.ERRORNEWITEM.typeErr}"/>
                                        </font>
                                    </s:if>
                                </td>
                            </tr>
                            <tr>
                                <td>Size</td>
                                <td>
                                    <input type="text" name="size" value="" />
                                    <s:if test="%{#session.ERRORNEWITEM !=null}">
                                        <font color="red">
                                        <s:property value="%{#session.ERRORNEWITEM.sizeErr}"/>
                                        </font>
                                    </s:if>
                                </td>
                            </tr>
                            <tr>
                                <td>Resolution</td>
                                <td>
                                    <input type="text" name="resolution" value="" />
                                    <s:if test="%{#session.ERRORNEWITEM !=null}">
                                        <font color="red">
                                        <s:property value="%{#session.ERRORNEWITEM.resolutionErr}"/>
                                        </font>
                                    </s:if>
                                </td>
                            </tr>
                            <tr>
                                <td>Protection</td>
                                <td>
                                    <input type="text" name="protection" value="" />
                                    <s:if test="%{#session.ERRORNEWITEM !=null}">
                                        <font color="red">
                                        <s:property value="%{#session.ERRORNEWITEM.protectionErr}"/>
                                        </font>
                                    </s:if>
                                </td>
                            </tr>
                            <tr>
                                <td>OS</td>
                                <td>
                                    <input type="text" name="os" value="" />
                                    <s:if test="%{#session.ERRORNEWITEM !=null}">
                                        <font color="red">
                                        <s:property value="%{#session.ERRORNEWITEM.osErr}"/>
                                        </font>
                                    </s:if>
                                </td>
                            </tr>
                            <tr>
                                <td>CPU</td>
                                <td>
                                    <input type="text" name="cpu" value="" />
                                    <s:if test="%{#session.ERRORNEWITEM !=null}">
                                        <font color="red">
                                        <s:property value="%{#session.ERRORNEWITEM.cpuErr}"/>
                                        </font>
                                    </s:if>
                                </td>
                            </tr>
                            <tr>
                                <td>GPU</td>
                                <td>
                                    <input type="text" name="gpu" value="" />
                                    <s:if test="%{#session.ERRORNEWITEM !=null}">
                                        <font color="red">
                                        <s:property value="%{#session.ERRORNEWITEM.gpuErr}"/>
                                        </font>
                                    </s:if>
                                </td>
                            </tr>
                            <tr>
                                <td>Internal</td>
                                <td>
                                    <input type="text" name="internal" value="" />
                                    <s:if test="%{#session.ERRORNEWITEM !=null}">
                                        <font color="red">
                                        <s:property value="%{#session.ERRORNEWITEM.internalErr}"/>
                                        </font>
                                    </s:if>
                                </td>
                            </tr>
                            <tr>
                                <td>Primary</td>
                                <td>
                                    <input type="text" name="primary" value="" />
                                    <s:if test="%{#session.ERRORNEWITEM !=null}">
                                        <font color="red">
                                        <s:property value="%{#session.ERRORNEWITEM.primaryErr}"/>
                                        </font>
                                    </s:if>
                                </td>
                            </tr>
                            <tr>
                                <td>Secondary</td>
                                <td>
                                    <input type="text" name="secondary" value="" />
                                    <s:if test="%{#session.ERRORNEWITEM !=null}">
                                        <font color="red">
                                        <s:property value="%{#session.ERRORNEWITEM.secondaryErr}"/>
                                        </font>
                                    </s:if>
                                </td>
                            </tr>
                            <tr>
                                <td>Battery</td>
                                <td>
                                    <input type="text" name="battery" value="" />
                                    <s:if test="%{#session.ERRORNEWITEM !=null}">
                                        <font color="red">
                                        <s:property value="%{#session.ERRORNEWITEM.batteryErr}"/>
                                        </font>
                                    </s:if>
                                </td>
                            </tr>
                            

                        </tbody>
                        
                    </table>
                        <button type="submit" class="btn btn-success">Success</button>
                </div>
                    
                </form>
                <div class="col-md-2"></div>
            </div>


            <script src="bootstrap4/js/jquery-3.2.1.min.js" type="text/javascript"></script>
            <script src="bootstrap4/js/bootstrap.min.js" type="text/javascript"></script>
            </body>
            </html>
