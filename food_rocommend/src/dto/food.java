package dto;

import java.io.Serializable;


public class food implements Serializable{
   
   private static final long serialVersionUID = -4274700572038677000L;
   
   private String foodId; 
   private String name;    
   private Integer unitPrice; //����
   private String Score; //����
   private String description; //���� 
   private String Address; //�ּ� 
   private String UnitsInStock;
   private String AllProducts;
   private String filename; //�̹��� ���ϸ� 
   private int quantity; //��ٱ��Ͽ� ���� ����
   private int Publisher;
   
   public food() {
      super();
   }
   
   public food(String foodId, String name, Integer unitPrice) {
      this.foodId =foodId;
      this.name = name;
      this.unitPrice = unitPrice;
      
   }
   
   public String getfoodId() {
      return foodId;
   }
   
   public String getName() {
      return name;
   }
   
   public void setfoodId(String foodId) {
      this.foodId =foodId;
   }
   
   public void setName(String name) {
      this.name =name;
   }
   
   public Integer getUnitPrice() {
      return unitPrice;
   }
   
   public void setUnitPrice(Integer unitPrice) {
      this.unitPrice =unitPrice;
   }
   
   public String getScore() {
      return Score;
   }
   
   public void setScore(String Score) {
      this.Score =Score;
   }
   
   public String getDescription() {
      return description;
   }
   
   public void setDescription(String description) {
      this.description =description;
   }
   
   public String getAddress() {
      return Address;
   }
   
   public void setAddress(String Address) {
      this.Address =Address;
   }

   public String getFilename() {
      return filename;
   }

   public void setFilename(String filename) {
      this.filename = filename;
   }

	public int getQuantity() {
		return quantity;
	}
	
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public String getUnitsInStock() {
		return UnitsInStock;
	}

	public void setUnitsInStock(String unitsInStock) {
		this.UnitsInStock = unitsInStock;
	}

	public String getAllProducts() {
		return AllProducts;
	}

	public void setAllProducts(String allProducts) {
		this.AllProducts = allProducts;
	}

	public int getPublisher() {
		return Publisher;
	}

	public void setPublisher(int publisher) {
		this.Publisher = publisher;
	}


   
   
   
}