package dto;

import java.io.Serializable;

public class Product implements Serializable {

	private static final long serialVersionUID = -4274700572038677000L;

	private String productId; 	// 제품 아이디(primary key)
	private String pName; 		// 제품 이름
	private Integer unitPrice; 	// 제품 가격
	private String description; // 제품 설명
	private String size; 		// 제품 사이즈
	private String category; 	// 제품 분류(상의, 하의, 원피스, 아우터)
	private String color; 		// 색상 태그
	private String temperature; // 온도 태그
	private Integer unitsInStock; 	// 재고 수
	private String condition; 	// 제품 상태(두께감)
	private String fileName; 	// 제품 이미지 파일명
	private int quantity;		// 장바구니에 담은 개수

	public Product() {
		super();
	}

	public Product(String pName, Integer unitPrice, String color, String temperature) {
		this.pName = pName;
		this.unitPrice = unitPrice;
		this.color = color;
		this.temperature = temperature;
	}

	public String getProductId() {
		return productId;
	}

	public void setProductId(String productId) {
		this.productId = productId;
	}

	public String getPName() {
		return pName;
	}

	public void setPName(String pName) {
		this.pName = pName;
	}

	public Integer getUnitPrice() {
		return unitPrice;
	}

	public void setUnitPrice(Integer unitPrice) {
		this.unitPrice = unitPrice;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getSize() {
		return size;
	}

	public void setSize(String size) {
		this.size = size;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getColor() {
		return color;
	}

	public void setColor(String color) {
		this.color = color;
	}

	public String getTemperature() {
		return temperature;
	}

	public void setTemperature(String temperature) {
		this.temperature = temperature;
	}

	public int getUnitsInStock() {
		return unitsInStock;
	}
	
	public void setUnitsInStock(int unitsInStock) {
		this.unitsInStock = unitsInStock;
	}

	public String getCondition() {
		return condition;
	}

	public void setCondition(String condition) {
		this.condition = condition;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	public String getFileName() {
		return fileName;
	}

	public void setFileName(String fileName) {
		this.fileName = fileName;
	}
	
	public int getQuantity() {
		return quantity;
	}
	
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

}
