package com.hospital.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
@Entity
@Table(name="service_master")
public class ServiceMasterSpeciality implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = -1276058699016642142L;
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="service_name_id")
	private long serviceNameId;
	
	@Column(name="service_name")
	private String serviceName;
	
	@Column(name="service_type_id")
    private String serviceTypeId;

	@Column(name="status")
    private String status;
	
	
	public ServiceMasterSpeciality() {
		super();
	}

	public ServiceMasterSpeciality(long serviceNameId, String serviceName, String serviceTypeId, String status) {
		super();
		this.serviceNameId = serviceNameId;
		this.serviceName = serviceName;
		this.serviceTypeId = serviceTypeId;
		this.status = status;
	}

	public long getServiceNameId() {
		return serviceNameId;
	}

	public void setServiceNameId(long serviceNameId) {
		this.serviceNameId = serviceNameId;
	}

	public String getServiceName() {
		return serviceName;
	}

	public void setServiceName(String serviceName) {
		this.serviceName = serviceName;
	}

	public String getServiceTypeId() {
		return serviceTypeId;
	}

	public void setServiceTypeId(String serviceTypeId) {
		this.serviceTypeId = serviceTypeId;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}
	
}
