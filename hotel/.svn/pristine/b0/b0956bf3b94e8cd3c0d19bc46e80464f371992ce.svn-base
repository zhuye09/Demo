package cn.sendto.hotel.models;

import java.io.Serializable;

public class RoomsModel implements Serializable {
	private String id;
	private int typeId;
	private String positions;
	private int state;

	private String typeName;
	private float price;

	private RoomTypeModel roomType = new RoomTypeModel();

	public RoomsModel() {
		super();
	}

	public RoomsModel(String id, int typeId) {
		super();
		this.id = id;
		this.typeId = typeId;
	}



	public String getTypeName() {
		return typeName;
	}

	public void setTypeName(String typeName) {
		this.typeName = typeName;
	}

	

	
	public RoomsModel(String id, int typeId, String positions, int state,
			 String typeName, float price, RoomTypeModel roomType) {
		super();
		this.id = id;
		this.typeId = typeId;
		this.positions = positions;
		this.state = state;
		this.typeName = typeName;
		this.price = price;
		this.roomType = roomType;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public int getTypeId() {
		return typeId;
	}

	public void setTypeId(int typeId) {
		this.typeId = typeId;
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

	public RoomTypeModel getRoomType() {
		return roomType;
	}

	public void setRoomType(RoomTypeModel roomType) {
		this.roomType = roomType;
	}

	
	public float getPrice() {
		return price;
	}

	public void setPrice(float price) {
		this.price = price;
	}

}
