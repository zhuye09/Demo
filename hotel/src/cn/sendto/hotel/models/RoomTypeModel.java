package cn.sendto.hotel.models;

import java.io.Serializable;

public class RoomTypeModel implements Serializable {
	private int id;
	private String typeName;
	private Float areas;
	private int beds;
	private Float price;

	public RoomTypeModel() {
		super();
	}
	public RoomTypeModel(int id, String typeName) {
		super();
		this.id = id;
		this.typeName = typeName;
	}
	public RoomTypeModel(int id, String typeName, Float areas, int beds,
			Float price) {
		super();
		this.id = id;
		this.typeName = typeName;
		this.areas = areas;
		this.beds = beds;
		this.price = price;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTypeName() {
		return typeName;
	}
	public void setTypeName(String typeName) {
		this.typeName = typeName;
	}
	public Float getAreas() {
		return areas;
	}
	public void setAreas(Float areas) {
		this.areas = areas;
	}
	public int getBeds() {
		return beds;
	}
	public void setBeds(int beds) {
		this.beds = beds;
	}
	public Float getPrice() {
		return price;
	}
	public void setPrice(Float price) {
		this.price = price;
	}
	
}
