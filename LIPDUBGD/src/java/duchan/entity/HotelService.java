package duchan.entity;
// Generated Oct 30, 2020 2:25:46 PM by Hibernate Tools 4.3.1



/**
 * HotelService generated by hbm2java
 */
public class HotelService  implements java.io.Serializable {


     private int hotelServiceId;
     private Hotel hotel;
     private Servicee servicee;
     private Float price;

    public HotelService() {
    }

	
    public HotelService(int hotelServiceId) {
        this.hotelServiceId = hotelServiceId;
    }
    public HotelService(int hotelServiceId, Hotel hotel, Servicee servicee, Float price) {
       this.hotelServiceId = hotelServiceId;
       this.hotel = hotel;
       this.servicee = servicee;
       this.price = price;
    }
   
    public int getHotelServiceId() {
        return this.hotelServiceId;
    }
    
    public void setHotelServiceId(int hotelServiceId) {
        this.hotelServiceId = hotelServiceId;
    }
    public Hotel getHotel() {
        return this.hotel;
    }
    
    public void setHotel(Hotel hotel) {
        this.hotel = hotel;
    }
    public Servicee getServicee() {
        return this.servicee;
    }
    
    public void setServicee(Servicee servicee) {
        this.servicee = servicee;
    }
    public Float getPrice() {
        return this.price;
    }
    
    public void setPrice(Float price) {
        this.price = price;
    }




}


