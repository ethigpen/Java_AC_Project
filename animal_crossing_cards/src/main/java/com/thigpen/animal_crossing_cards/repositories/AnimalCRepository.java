package com.thigpen.animal_crossing_cards.repositories;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.thigpen.animal_crossing_cards.models.AnimalC;

@Repository
public interface AnimalCRepository extends CrudRepository<AnimalC, Long> {

}
