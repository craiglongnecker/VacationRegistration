package edu.dmacc.spring.vacationregistration;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="vacations")
public class Vacation {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	private String vacationSpot;
	private double cost;
	private String reservedDate;
	private boolean reserved;
	
	public Vacation() {
		
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getVacationSpot() {
		return vacationSpot;
	}

	public void setVacationSpot(String vacationSpot) {
		this.vacationSpot = vacationSpot;
	}

	public double getCost() {
		return cost;
	}

	public void setCost(double cost) {
		this.cost = cost;
	}

	public String getReservedDate() {
		return reservedDate;
	}

	public void setReserveDate(String reservedDate) {
		this.reservedDate = reservedDate;
	}

	public boolean isReserved() {
		return reserved;
	}

	public void setReserved(boolean reserved) {
		this.reserved = reserved;
	}
}

