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

import com.aizant.DAO.AssignFormsDAO;
import com.aizant.DAO.AssignFormsDAO;
import com.aizant.model.AssignForms;

import com.google.gson.Gson;

@Controller
public class AssignFormsController {
	
	@Autowired
	private AssignFormsDAO assignFormsDAO ;
	
	@RequestMapping("/assign_forms")
	public ModelAndView Form1() {
		ModelAndView m1 = new ModelAndView("assign_forms");

		return m1;
	}
/*create assignForms*/
	@RequestMapping("/create_assignForms")
	public ModelAndView display1() {
		ModelAndView m1 = new ModelAndView("create_assignForms");
		return m1;
	}
	@ModelAttribute("AssignForms")
	public AssignForms AssignForms() {
		return new AssignForms();
	}
	
	/*storeassignForms*/
	@RequestMapping(value = "/store_assignForms", method = RequestMethod.POST)
	public ModelAndView storeassignForms(@Valid @ModelAttribute("AssignForms") AssignForms assignForms, BindingResult result) {
		if (result.hasErrors()) {
			System.out.println("hi");

			return new ModelAndView("redirect:/create_assignForms");
		}
		assignFormsDAO.saveOrUpdate(assignForms);
		return new ModelAndView("redirect:/display_assignForms");
	}
	
	/*update*/
	
	@RequestMapping(value = "/update_assignForms", method = RequestMethod.POST)
	public ModelAndView updateassignForms(HttpServletRequest request,@RequestParam int id,@ModelAttribute("AssignForms") AssignForms assignForms) {
		
		assignForms.setId(id);
		assignFormsDAO.saveOrUpdate(assignForms);
		return new ModelAndView("redirect:/display_assignForms");
	}
	@RequestMapping(value = "edit_assignForms", method = RequestMethod.GET)
	public ModelAndView editassignForms(@RequestParam int id, @ModelAttribute("AssignForms") AssignForms assignForms) {
		AssignForms cp = assignFormsDAO.get(id);
		return new ModelAndView("edit_assignForms", "AssignForms", cp);
	}
	
	/*delete assignForms*/
	/*@RequestMapping(value = "/delete_assignForms", method = RequestMethod.POST)
	public @ResponseBody String deleteuser(@RequestParam int id) {

		assignFormsDAO.deleteProject(id);
		Gson u = new Gson();
		String json = u.toJson(id);
		return json;
	}*/
	@RequestMapping(value = "/list5", method = RequestMethod.GET, produces = "application/json")
	public @ResponseBody String showList() {
		List<AssignForms> list=assignFormsDAO.list();
		Gson u = new Gson();
		String json = u.toJson(list);
		return json;
	}
	/*admin panel*/

	/*display assignForms*/
	
	@RequestMapping("/display_assignForms")
	public ModelAndView retriveRecords() throws Exception {
		ModelAndView m1 = new ModelAndView("display_assignForms");
		
		return m1;
	}
	
	@RequestMapping("/deleteAssignForms")
	public ModelAndView deleteassignForms(@RequestParam int id) {
		System.out.println("hello");
		assignFormsDAO.deleteAssignForms(id);
		ModelAndView model1 = new ModelAndView("display_assignForms");
		return model1;
	}
	
}
