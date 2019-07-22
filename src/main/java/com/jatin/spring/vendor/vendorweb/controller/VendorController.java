package com.jatin.spring.vendor.vendorweb.controller;

import com.jatin.spring.vendor.vendorweb.entities.Vendor;
import com.jatin.spring.vendor.vendorweb.services.VendorService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
public class VendorController {

    @Autowired
    VendorService service;

    @RequestMapping("/createVendor")
    public String createVendor(){
        return "createVendor";
    }

    @RequestMapping("/saveVendor")
    public String saveVendor(@ModelAttribute("vendor") Vendor vendor, Model model){
        Vendor vendorNew = service.createVendor(vendor);
        final String msg = "Vendor record Succssfully Created! "+vendorNew.getId();
        model.addAttribute("msg",msg);
        return "createVendor";
    }

    @RequestMapping("/viewAll")
    public String viewAllVendor(Model model){
        List<Vendor> vendors = service.getAllVendor();
        model.addAttribute("vendors",vendors);
        return "displayVendor";
    }

    @RequestMapping("/deleteVendor")
    public String deleteVendor(@RequestParam("id") int id, Model model){
        Vendor vendor = new Vendor();
        vendor.setId(id);
        service.deleteVendor(vendor);

        List<Vendor> vendors = service.getAllVendor();
        model.addAttribute("vendors",vendors);
        return "displayVendor";
    }

    @RequestMapping("/editVendor")
    public String editVendor(@RequestParam("id") int id, ModelMap model){
        Vendor vendor = service.getVendorById(id);
        model.addAttribute("vendor",vendor);
        return "editVendor";
    }


    @RequestMapping("/updateVendor")
    public String updateVendor(@ModelAttribute("vendor") Vendor vendor, ModelMap modelMap){
        Vendor vendorUpdated = service.updateVendor(vendor);
        final String msg ="Vendor modified succssfully for ID: "+vendorUpdated.getId();
        modelMap.addAttribute("msg", msg);
        List<Vendor> vendors= service.getAllVendor();
        modelMap.addAttribute("vendors", vendors);
        return "displayVendor";
    }


}
