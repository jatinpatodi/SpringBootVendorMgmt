package com.jatin.spring.vendor.vendorweb.services;

import com.jatin.spring.vendor.vendorweb.entities.Vendor;

import java.util.List;

public interface VendorService {

    Vendor createVendor(Vendor vendor);

    Vendor updateVendor(Vendor vendor);

    void deleteVendor (Vendor vendor);

    Vendor getVendorById (int id);

    List<Vendor> getAllVendor ();

}
