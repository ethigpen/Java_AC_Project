package com.thigpen.animal_crossing_cards.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.thigpen.animal_crossing_cards.models.AnimalC;

@Repository
public interface AnimalCRepository extends CrudRepository<AnimalC, Long> {
	
	List<AnimalC> findBySpecies(String species);
	List<AnimalC> findByName(String name);
	List<AnimalC> findByGender(String gender);
}
