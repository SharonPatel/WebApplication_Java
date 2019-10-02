<%-- 
    Document   : product
    Created on : Sep 25, 2019, 11:22:37 PM
    Author     : Sharon
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="newCss.css">

        <title>Women's Online Shopping</title>
    </head>
    <body>
    <center><h1 id="heading1">Women's Online Shopping</h1></center>
    <br><br>
    <hr>
    <h4>Product details </h4>
    <div align="left">
        <a href="index.jsp">Click her to go back</a></div>
    <form action="Women" method="Post">
        <table border='solid'>
            <tr>
                <th>Product</th>
                <th>Product Description</th>
                <th> price </th>  
                <th>Buy</th>
            </tr>

            <tr>
                <td><img src="pro1.JPG" height="200px" width="150px"> </td> 
                <td>Pink embroidered woven cinched waist top,<br> has a high neck, long sleeves, button closure Size & Fit
                    Semi-Fit</td>
                <td><input type="hidden" value='120' name="lbl1" >$120 <br><br>
                    <input type="radio" value='XS' name="chb1">XS
                    <input type="radio" value="S" name="chb1">S
                    <input type="radio" value="M" name="chb1">M
                    <input type="radio" value="L" name="chb1">L  <br>
                    Quantity: &nbsp; <input type="number" name="txt1" value='1' min="1" max="10">
                </td>
                <td> <input type="submit" value="BUY NOW" name="btn1"></td>
            </tr>
            <?

            ?>
            <tr>
                <td><img src='pro2.JPG' height='200px' width='150px'></td> &nbsp;&nbsp;&nbsp;&nbsp;
                <td>Blue solid woven cinched waist top, has a V-neck, long sleeves,<br> and button closure
                    Size & Fit Semi-Fit </td>
                <td><input type="hidden" value='200' name="lbl2" >$200 <br><br>
                    <input type="radio" value='XS' name="chb2">XS
                    <input type="radio" value="S" name="chb2">S
                    <input type="radio" value="M" name="chb2">M
                    <input type="radio" value="L" name="chb2">L  <br>
                    Quantity: &nbsp; <input type="number" name="txt2" value='1'  min="1" max="10"></td>
                <td> <input type="submit" value="BUY NOW" name="btn2"></td>
            </tr>
            <tr>
                <td><img src='pro3.JPG' height="200px" width="150px"></td>
                <td> A two-tone boxy bag in smooth Italian-tanned leather, <br>accented with our Horseferry print and polished<br> chain detailing. Wear on the shoulder, across the body or detach the strap to carry as a clutch.</td>
                <td><input type="hidden" value='1000' name="lbl3" >$1000 <br><br>
                    <input type="radio" value='XS' name="chb3">XS
                    <input type="radio" value="S" name="chb3">S
                    <input type="radio" value="M" name="chb3">M
                    <input type="radio" value="L" name="chb3">L  <br>
                    Quantity: &nbsp; <input type="number" name="txt3" value='1'  min="1" max="10">

                </td>
                <td> <input type="submit" value="BUY NOW" name="btn3"></td>

            </tr>

        </table>
    </form>
 
</body>
</html>
