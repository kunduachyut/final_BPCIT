package shopmart.models;

public class Product {
	private int productID;
	private int price;
	private String type;
	private String catagory;
	private String description;
	public Product(){
		productID = 0;
		price=0;
		type ="";
		catagory ="";
		description="";
	}
	public Product(int productID, int price, String type, String catagory, String description) {
		this.productID = productID;
		this.price = price;
		this.type = type;
		this.catagory = catagory;
		this.description = description;
	}
	public int getProductID() {
		return productID;
	}
	public void setProductID(int productID) {
		this.productID = productID;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getCatagory() {
		return catagory;
	}
	public void setCatagory(String catagory) {
		this.catagory = catagory;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	@Override
	public String toString() {
		return "Product [productID=" + productID + ", price=" + price + ", description="
				+ description + "]";
	}
}
