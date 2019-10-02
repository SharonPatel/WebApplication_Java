/* * Name: Sharon Patel
 * Student Id: 991503002
 * System10199 - Web Programming
 */
package model;

import java.text.NumberFormat;

/**
 *
 * @author Sharon
 */
public class Calculation {

    private double price;
    private double priceTwo;
    private double priceThree;
    private double tax = 0.13;
    private double amount;
    private String size;
    private int quantity;

    //default constructor 
    public Calculation() {

    }

    public Calculation(double price, String size, int qty) {
        this.price = price;
        this.size = size;
        this.quantity = qty;

    }
    //getter and setter method for tax
    public double getTax() {
        return this.tax;
    }

    public void setTax(double t) {
        this.tax = t;
    }

    //get method for price
    public double getPrice() {
        return this.price;
    }

    //set method for price
    public void setPrice(double p) {
        this.price = p;
    }

    //getter and setter method for size object
    public String getSize() {
        return this.size;
    }

    public void setSize(String s) {
        this.size = s;
    }

    //getter and setter method for quantity object
    public int getQty() {
        return this.quantity;
    }

    public void setQty(int qty) {
        this.quantity = qty;
    }

    //get method for amount
    public double getAmount() {
        return this.amount;
    }

    //set method for amount
    public void setAmount(double a) {
        this.amount = a;
    }

    public double amount(double price, int qty) {
        double taxPrice = price * tax * qty;
        double amount = taxPrice + price * qty;
        return amount;
    }

    public String currencyFormat(double x) {

        NumberFormat currency = NumberFormat.getCurrencyInstance();

        return currency.format(x);

    }

}
