package com.poc.crmbolt;

import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
  
@Controller
public class HomeController {
  
    String message = "Suvrat";
    
    String controllermessage = "hey this is controller 2";
  
    @RequestMapping("/")
    public String welcome(Map<String, Object> model) {
        model.put("message", this.message);
        return "/home";
    }
  
    @RequestMapping("/testcontroller")
    public String controller2(Map<String, Object> model) {
        model.put("message", this.controllermessage);
        return "/color";
    }
  
    
    @RequestMapping(value = "/student", method = RequestMethod.GET)
    public ModelAndView student() {
       return new ModelAndView("student", "command", new Student());
    }
    @RequestMapping(value = "/addStudent", method = RequestMethod.POST)
       public String addStudent(@ModelAttribute("SpringWeb")Student student, 
    
    ModelMap model) {
       model.addAttribute("name", student.getName());
       model.addAttribute("age", student.getAge());
       model.addAttribute("id", student.getId());
       
       return "/result";
    }
 }
    
    
