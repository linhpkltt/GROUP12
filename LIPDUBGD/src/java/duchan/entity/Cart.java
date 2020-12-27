/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package duchan.entity;

/**
 *
 * @author duchan
 */
public class Cart {
    private Hotel hotel;
    private int quantity;

    public Cart() {
    }

    public Cart(Hotel hotel, int quantity) {
        this.hotel = hotel;
        this.quantity = quantity;
    }

    public Hotel getHotel() {
        return hotel;
    }

    public void setHotel(Hotel hotel) {
        this.hotel = hotel;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }
    
}
