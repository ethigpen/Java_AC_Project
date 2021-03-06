package com.thigpen.animal_crossing_cards.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.thigpen.animal_crossing_cards.models.AnimalC;
import com.thigpen.animal_crossing_cards.repositories.AnimalCRepository;



@Service
public class AnimalCServices {

	@Autowired
	private AnimalCRepository acrepo;

	public AnimalC createAnimal(AnimalC animal) {
		return this.acrepo.save(animal);
	}
	
	public List<AnimalC> findAll(){
		return (List<AnimalC>)this.acrepo.findAll();
	}
	
	//get animal by id
	public AnimalC findanimal(Long id) {
		return this.acrepo.findById(id).orElse(null);
	}
	
	//search by species
	public List<AnimalC> findBySpecies(String species){
		return this.acrepo.findBySpecies(species);
	}
	
	//search by name
	public List<AnimalC> findBYname(String name){
		return this.acrepo.findByName(name);
	}
	
	//search by gender
	public List<AnimalC> findBYgender(String gender){
		return this.acrepo.findByGender(gender);
	}
}
