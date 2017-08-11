package cn.sendto.hotel.view;

import java.io.Serializable;

public class RoomsRoomtype implements Serializable{
	private String id;
	private String positions;
	private int state;
	private int typeId;
	private String typeName;
	private float areas;
	private int beds;
	private float price;
	
	public RoomsRoomtype() {
		super();
	}

	public RoomsRoomtype(String id, String positions, int state, int typeId,
			String typeName, float areas, int beds, float price) {
		super();
		this.id = id;
		this.positions = positions;
		this.state = state;
		this.typeId = typeId;
		this.typeName = typeName;
		this.areas = areas;
		this.beds = beds;
		this.price = price;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPositions() {
		return positions;
	}

	public void setPositions(String positions) {
		this.positions = positions;
	}

	public int getState() {
		return state;
	}

	public void setState(int state) {
		this.state = state;
	}

	public int getTypeId() {
		return typeId;
	}

	public void setTypeId(int typeId) {
		this.typeId = typeId;
	}

	public String getTypeName() {
		return typeName;
	}

	public void setTypeName(String typeName) {
		this.typeName = typeName;
	}

	public float getAreas() {
		return areas;
	}

	public void setAreas(float areas) {
		this.areas = areas;
	}

	public int getBeds() {
		return beds;
	}

	public void setBeds(int beds) {
		this.beds = beds;
	}

	public float getPrice() {
		return price;
	}

	public void setPrice(float price) {
		this.price = price;
	}
	
}
