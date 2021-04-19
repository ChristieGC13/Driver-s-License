package com.cc.relationships.services;

import java.util.ArrayList;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.cc.relationships.models.Person;
import com.cc.relationships.repository.PersonRepository;

@Service
public class PersonService {
	
	private PersonRepository personRepo;
	public PersonService(PersonRepository personRepo) {
		this.personRepo = personRepo;
	}
	
	public ArrayList<Person> getAll() {
		return (ArrayList<Person>) personRepo.findAll();
	}
	
	public Person create(Person newPerson) {
		return personRepo.save(newPerson);
	}
	
	public Person findPerson(Long id) {
		Optional<Person> optionalPerson = personRepo.findById(id);
		if(optionalPerson.isPresent()) {
			return optionalPerson.get();
		} else {
			return null;			
		}
	}
}
