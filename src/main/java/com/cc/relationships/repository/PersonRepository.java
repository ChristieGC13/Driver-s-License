package com.cc.relationships.repository;

import java.util.ArrayList;
import java.util.Optional;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.cc.relationships.models.Person;

@Repository
public interface PersonRepository extends CrudRepository<Person, Long> {
	
	
	ArrayList<Person> findAll();
	
	Optional<Person>  findById(Integer Id);

	void deleteById(Long id);
}

