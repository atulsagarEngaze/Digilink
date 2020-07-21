package com.hospital.jpa;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.hospital.model.Doctor;

public interface DoctorRepository extends JpaRepository<Doctor, Long>     {
	
	Doctor findByMobile(String mobile);
	Doctor findByEmail(String email);
	@Query("SELECT doctor FROM Doctor doctor where doctor.city =:city")
	List<Doctor> findByCity(@Param("city") String city);
}
