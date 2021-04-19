package com.cc.relationships.controllers;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.cc.relationships.models.License;
import com.cc.relationships.models.Person;
import com.cc.relationships.services.LicenseService;
import com.cc.relationships.services.PersonService;

@Controller
public class MainController {
	private PersonService personServ;
	private LicenseService licenseServ;
		
		public MainController(PersonService personServ, LicenseService licenseServ) {
			this.personServ = personServ;
			this.licenseServ = licenseServ;
		}
		
	
		@GetMapping("/persons/new")
		public String person(@ModelAttribute("newPerson") Person newPerson, BindingResult result) {
			return "newPerson.jsp";
		}
		
		@PostMapping("/persons/new")
		public String create(@Valid @ModelAttribute("newPerson") Person newPerson, BindingResult result, Model model) {
			if (result.hasErrors()) {
				model.addAttribute("allPersons", personServ.getAll());
				return "redirect:/persons/new";
			}
			personServ.create(newPerson);
			return "redirect:/persons/new";
		}
		
		@GetMapping("/licenses/new")
		public String license(@ModelAttribute("newLicense") License newLicense, BindingResult result) {
			return "newLicense.jsp";
		}
		
		@PostMapping("/licenses/new")
		public String create(@Valid @ModelAttribute("newLicense") License newLicense, BindingResult result, Model model) {
			if (result.hasErrors()) {
				model.addAttribute("allLicenses", licenseServ.getAll());
				model.addAttribute("allPersons", personServ.getAll());
				return "redirect:/licenses/new";
			}
			licenseServ.create(newLicense);
			return "redirect:/licenses/new";
		}
		
		@GetMapping("/persons/{id}")
		public String details(Model model, @PathVariable("id") Long id) {
			Person persons = personServ.findPerson(id);
			model.addAttribute("person", persons);
			return "personDeets.jsp";
		}
}
