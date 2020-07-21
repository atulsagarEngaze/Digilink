package com.hospital.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="city_master")
public class CountryMaster {
	@Id
	@Column(name="country_id")
	private long countryId;
	@Column(name="country_name")
	private String countryName;
	@Column(name="status")
	private String  status;
	
	public CountryMaster(long countryId, String countryName, String status) {
		super();
		this.countryId = countryId;
		this.countryName = countryName;
		this.status = status;
	}
	public long getCountryId() {
		return countryId;
	}
	public void setCountryId(long countryId) {
		this.countryId = countryId;
	}
	public String getCountryName() {
		return countryName;
	}
	public void setCountryName(String countryName) {
		this.countryName = countryName;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	
}
