/*
 * Name: Sharon Patel
 * Student Id: 991503002

 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Calculation;

/**
 *
 * @author Sharon
 */
public class WomenShopping extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        /* TODO output your page here. You may use following sample code. */
        String priceOne = request.getParameter("lbl1");
        String priceTwo = request.getParameter("lbl2");
        String priceThree = request.getParameter("lbl3");
        String ssize = request.getParameter("chb1");
        String quantity = request.getParameter("txt1");
         String quantity1 = request.getParameter("txt2");
          String quantity2 = request.getParameter("txt3");

        double price = 0;
        double prTwo = 0;
        double prThree = 0;
        int qty = 0;
        int qty1 = 0;
        int qty2 = 0;

        price = Double.parseDouble(priceOne);
        prTwo = Double.parseDouble(priceTwo);
        prThree = Double.parseDouble(priceThree);
        qty = Integer.parseInt(quantity);
        qty1 = Integer.parseInt(quantity1);
        qty2 = Integer.parseInt(quantity2);
        

        Calculation cal1 = new Calculation(price, ssize, qty);
        Calculation cal = new Calculation();

        //set data for response.
        request.setAttribute("price", priceOne);
        request.setAttribute("priceTwo", priceTwo);
        request.setAttribute("priceThree", priceThree);

        double am = cal1.amount(price, qty);
        String finalAmount = cal1.currencyFormat(am);
        double am1 = cal1.amount(prTwo, qty1);
        String finalAmount1 = cal1.currencyFormat(am1);
        double am2 = cal1.amount(prThree, qty2);
        String finalAmount2 = cal1.currencyFormat(am2);

        request.setAttribute("Cal", cal1);
        request.setAttribute("amount", finalAmount);
        request.setAttribute("amount1", finalAmount1);
        request.setAttribute("amount2", finalAmount2);
        RequestDispatcher view
                = request.getRequestDispatcher("response.jsp");
        view.forward(request, response);

    }
}
