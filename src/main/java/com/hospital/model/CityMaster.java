package com.hospital.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
@Entity
@Table(name="city_master")
public class CityMaster implements Serializable {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="city_id")
	private long cityId ;
	@Column(name="city_name")
	private String cityName;
    @Column(name = "country_id")
	private long countryId;
	@Column
	private String status;
	
	public CityMaster() {
		super();
	}
	public CityMaster(long cityId, String cityName, CountryMaster countryMaster,long countryId, String status) {
		super();
		this.cityId = cityId;
		this.cityName = cityName;
		this.countryId = countryId;
		this.status = status;
	}
	public long getCityId() {
		return cityId;
	}
	public void setCityId(long cityId) {
		this.cityId = cityId;
	}
	public String getCityName() {
		return cityName;
	}
	public void setCityName(String cityName) {
		this.cityName = cityName;
	}
	
	public long getCountryId() {
		return countryId;
	}
	public void setCountryId(long countryId) {
		this.countryId = countryId;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	
}
