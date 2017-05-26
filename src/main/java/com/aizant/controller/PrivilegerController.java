package com.aizant.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.aizant.DAO.PrivilegerDAO;
import com.aizant.model.Privileger;

import com.google.gson.Gson;

@Controller
public class PrivilegerController {
	
	@Autowired
	private PrivilegerDAO privilegerDAO ;
	
	
/*create privileger*/
	@RequestMapping("/create_privileger")
	public ModelAndView show1() {
		ModelAndView m1 = new ModelAndView("create_privileger");
		return m1;
	}
	@ModelAttribute("Privileger")
	public Privileger Privileger() {
		return new Privileger();
	}
	
	/*storeprivileger*/
	@RequestMapping(value = "/store_privileger", method = RequestMethod.POST)
	public ModelAndView storeprivileger(@Valid @ModelAttribute("Privileger") Privileger privileger, BindingResult result) {
		if (result.hasErrors()) {
			System.out.println("hi");

			return new ModelAndView("redirect:/create_privileger");
		}
		privilegerDAO.saveOrUpdate(privileger);
		return new ModelAndView("redirect:/show_privilegers");
	}
	
	/*update*/
	
	@RequestMapping(value = "/update_privileger", method = RequestMethod.POST)
	public ModelAndView updateprivileger(HttpServletRequest request,@RequestParam int id,@ModelAttribute("Privileger") Privileger privileger) {
		
		privileger.setId(id);
		privilegerDAO.saveOrUpdate(privileger);
		return new ModelAndView("redirect:/show_privilegers");
	}
	@RequestMapping(value = "edit_privileger", method = RequestMethod.GET)
	public ModelAndView editprivileger(@RequestParam int id, @ModelAttribute("Privileger") Privileger privileger) {
		Privileger cp = privilegerDAO.get(id);
		return new ModelAndView("edit_privileger", "Privileger", cp);
	}
	
	/*delete privileger*/
	/*@RequestMapping(value = "/delete_privileger", method = RequestMethod.POST)
	public @ResponseBody String deleteuser(@RequestParam int id) {

		privilegerDAO.deleteProject(id);
		Gson u = new Gson();
		String json = u.toJson(id);
		return json;
	}*/
	@RequestMapping(value = "/list4", method = RequestMethod.GET, produces = "application/json")
	public @ResponseBody String showList() {
		List<Privileger> list=privilegerDAO.list();
		Gson u = new Gson();
		String json = u.toJson(list);
		return json;
	}
	/*admin panel*/
	
	/*show privilegers*/
	
	@RequestMapping("/show_privilegers")
	public ModelAndView retriveRecords() throws Exception {
		ModelAndView m1 = new ModelAndView("show_privilegers");
		
		return m1;
	}
	
	@RequestMapping("/deletePrivileger")
	public ModelAndView deleteprivileger(@RequestParam int id) {
		System.out.println("hello");
		privilegerDAO.deletePrivileger(id);
		return new ModelAndView("redirect:/show_privilegers");
	}

}
