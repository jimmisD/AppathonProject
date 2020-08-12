package com.example.eHospital;

import org.springframework.data.repository.CrudRepository;

import com.example.eHospital.Patient;

// This will be AUTO IMPLEMENTED by Spring into a Bean called userRepository
// CRUD refers Create, Read, Update, Delete

public interface PatientRepository extends CrudRepository<Patient, Integer> {

}
