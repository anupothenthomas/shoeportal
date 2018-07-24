package shoeportal.cart;

import java.util.List;

import shoeportal.cart.Cart;

public interface CartDao 

{
	void insert(Cart ca);
	void update(Cart ca);
	void delete(long cartid);
	
	Cart getCart(long cartid);
	
	List<Cart> getCart();
}
