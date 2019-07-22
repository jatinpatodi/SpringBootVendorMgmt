package com.jatin.spring.vendor.vendorweb.services;

import com.jatin.spring.vendor.vendorweb.entities.Vendor;
import com.jatin.spring.vendor.vendorweb.repository.VendorRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class VendorServiceImpl implements VendorService {

    @Autowired
    VendorRepository vendorRepository;

    @Override
    public Vendor createVendor(Vendor vendor) {
        return vendorRepository.save(vendor);
    }

    @Override
    public Vendor updateVendor(Vendor vendor) {
        return vendorRepository.save(vendor);
    }

    @Override
    public void deleteVendor(Vendor vendor) {
        vendorRepository.delete(vendor);
    }

    @Override
    public Vendor getVendorById(int id) {
        Optional<Vendor> vendor = vendorRepository.findById(id);
        if (vendor.isPresent()){
            return vendor.get();
        }
        return null;
    }

    @Override
    public List<Vendor> getAllVendor() {
        List<Vendor> vendors = vendorRepository.findAll();
        return vendors;
    }
}
