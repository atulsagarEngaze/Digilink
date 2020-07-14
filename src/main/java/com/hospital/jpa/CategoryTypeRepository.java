package com.hospital.jpa;

import org.springframework.data.jpa.repository.JpaRepository;

import com.hospital.model.CategoryType;
import com.hospital.model.SpecializationMaster;

public interface CategoryTypeRepository extends JpaRepository<CategoryType, Long>{

//	CategoryType findBySpecialization(String specialization);
//	CategoryType findByselectId(long selectId);
	
	

}