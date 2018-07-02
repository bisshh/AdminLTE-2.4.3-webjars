/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.techie.SMS.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author Resham
 */

@Controller
@RequestMapping(value = "/")
public class HomeController {
    @GetMapping
    public String index(Model model){
        model.addAttribute("name", "Resham Khadka");
        model.addAttribute("pos", "Java Developer");
        model.addAttribute("project", "School Management");
        return "index";
    }
}
