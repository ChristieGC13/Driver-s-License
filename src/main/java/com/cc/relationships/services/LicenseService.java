package com.cc.relationships.services;

import java.util.ArrayList;

import org.springframework.stereotype.Service;

import com.cc.relationships.models.License;
import com.cc.relationships.repository.LicenseRepository;

@Service
public class LicenseService {
	
	private LicenseRepository licenseRepo;
	public LicenseService(LicenseRepository licenseRepo) {
		this.licenseRepo = licenseRepo;
	}
	
	public ArrayList<License> getAll() {
		return (ArrayList<License>) licenseRepo.findAll();
	}
	
	public License create(License newLicense) {
		return licenseRepo.save(newLicense);
	}
}
