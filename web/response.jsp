<%-- 
    Document   : response
    Created on : Sep 25, 2019, 11:22:47 PM
    Author     : Sharon
--%>

<%@page import="model.Calculation"%>
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

    <% Calculation cal = (Calculation) request.getAttribute("Cal");

        String amount = (String) request.getAttribute("amount");
        String amount1 = (String) request.getAttribute("amount1");
        String amount2 = (String) request.getAttribute("amount2");

        String ssize = request.getParameter("chb1");
        String size1 = request.getParameter("chb2");
        String size2 = request.getParameter("chb3");

        if ("BUY NOW".equals(request.getParameter("btn1"))) {
           if (ssize == null){
              out.print("Please enter a size");
          }else{
            out.print("<center>");
            out.print("Quantity: " + request.getParameter("txt1"));
            out.print("<br>");
            out.print("Size: " + ssize);
            out.print("<br>");
            out.print("price:" + " $ " + request.getParameter("lbl1"));
            out.print("<br>");
            out.print("Tax: " + " $ " + cal.getTax());
            out.print("<br>");
            out.print("Total amount to pay is :  " + amount);
            out.print("</center>");
           }
             
        } else if ("BUY NOW".equals(request.getParameter("btn2"))) {
             if (size1 == null){
              out.print("Please enter a size");
          }else{
            out.print("<center>");
            out.print("Quantity: " + request.getParameter("txt2"));
            out.print("<br>");
            out.print("Size: " + size1);
            out.print("<br>");
            out.print("price:" + " $ " + request.getParameter("lbl2"));
            out.print("<br>");
            out.print("Tax: " + " $ " + cal.getTax());
            out.print("<br>");
            out.print("Total amount to pay is :  " + amount1);}
        } else if ("BUY NOW".equals(request.getParameter("btn3"))) {
             if (size2 == null){
              out.print("Please enter a size");
          }else{
            out.print("<center>");
            out.print("Quantity: " + request.getParameter("txt3"));
            out.print("<br>");
            out.print("Size: " + size2);
            out.print("<br>");
            out.print("price:" + " $ " + request.getParameter("lbl3"));
            out.print("<br>");
            out.print("Tax: " + " $ " + cal.getTax());
            out.print("<br>");
            out.print("Total amount to pay is :  " + amount2);}
        }
       

    %>
    <br>
    <br>
    <a href="product.jsp">Click Here to Go Back
</body>
</html>
