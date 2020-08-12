package com.example.eHospital;

import org.springframework.data.repository.CrudRepository;

import com.example.eHospital.Cure;

// This will be AUTO IMPLEMENTED by Spring into a Bean called userRepository
// CRUD refers Create, Read, Update, Delete

public interface CureRepository extends CrudRepository<Cure, Integer> {

}
