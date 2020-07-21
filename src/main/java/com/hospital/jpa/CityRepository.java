package com.hospital.jpa;

import org.springframework.data.jpa.repository.JpaRepository;

import com.hospital.model.CityMaster;

public interface CityRepository extends JpaRepository<CityMaster, Long> {

}
