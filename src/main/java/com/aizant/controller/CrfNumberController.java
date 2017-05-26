package com.aizant.controller;


import java.util.Iterator;
import java.util.List;
import java.util.regex.Pattern;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.aizant.DAO.CrfNumberDAO;
import com.aizant.model.CreateProject;
import com.aizant.model.CrfNumber;

import com.aizant.model.User;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;


@Controller
public class CrfNumberController {

@Autowired
private CrfNumberDAO ed;



@RequestMapping("/create_crf")
public ModelAndView display() {
	ModelAndView create = new ModelAndView("create_crf");
	return create;
}
@RequestMapping("/store_crf")
public ModelAndView addexpriment(HttpServletRequest request, @Valid @ModelAttribute("CrfNumber") CrfNumber crfNumber,
		BindingResult result) {
	
	String s = "what";
	s.split(",");
	String[] crf_Number=crfNumber.getCrf_Number().split(",");
	for(int i=0;i<crf_Number.length;i++){
		CrfNumber newexp=new CrfNumber();
		System.out.println("hai*******"+ newexp);
		newexp.setCrf_Number(crf_Number[i]);
		System.out.println("ha1"+crf_Number[i]);
		//newexp.setVolunteerName(volunteerName[i]);
newexp.setProject_Number(crfNumber.getProject_Number());
		System.out.println("h2");
		
		
		ed.save(newexp);
		System.out.println("value"+newexp);
	}



	if (result.hasErrors()) {
		return new ModelAndView("creare_crf");
	}

	return new ModelAndView("redirect:/show_crf");
}

@ModelAttribute("CrfNumber")
public CrfNumber createExperiment() {
	return new CrfNumber();
}
/*@RequestMapping(method = RequestMethod.GET)
public String assign_forms(@RequestParam CreateProject createProject,ModelMap modelMap) {
	CrfNumberDAO cdf = new 	CrfNumberDAO();
	modelMap.put("level1", ed.getAllCrf(createProject));
	return "assign_forms";
}
@RequestMapping(value="filterCatLevel2",method = RequestMethod.GET)
@ResponseBody
public List<CrfNumber> filterCatLevel2(HttpServletRequest request){
	return  ed.getAllCrf(ed.get(int.valueOf(request.getParameter("id")))));
	
}*/

@RequestMapping(value = "view_crf", method = RequestMethod.GET)
public ModelAndView viewvolunteer(@RequestParam int id, @ModelAttribute("CrfNumber") CrfNumber crfNumber) {
	System.out.println(id);
	System.out.println(crfNumber.getId());
	CrfNumber exp = ed.get(id);
	return new ModelAndView("view_crf", "crfNumber", exp);
	
}
@RequestMapping("/show_crf")
public ModelAndView retriveRecords() {
	ModelAndView show = new ModelAndView("show_crf");

	return show;
}

@RequestMapping(value = "edit_crf", method = RequestMethod.GET)
public ModelAndView editCrf(@RequestParam int id, @ModelAttribute("CrfNumber") CrfNumber crfNumber) {
	CrfNumber edit = ed.get(id);
	return new ModelAndView("edit_crf", "crfNumber", edit);
}


@RequestMapping(value = "/update_crf", method = RequestMethod.POST)
public ModelAndView updateCrf(HttpServletRequest request, @RequestParam int id,
		@Valid@ModelAttribute("CrfNumber") CrfNumber crfNumber) {
	System.out.println(crfNumber.getId());
	
	crfNumber.setId(id);

	ed.Update(crfNumber);
	return new ModelAndView("redirect:/show_crf");
}

@Transactional
@RequestMapping(value = "/deleteCrf", method = RequestMethod.POST)

	public @ResponseBody String deleteCrf(HttpServletRequest request,@RequestParam int Crfid,	@Valid@ModelAttribute("CrfNumber") CrfNumber crfNumber,BindingResult result) {
		System.out.println("iam in controller");
		ed.deleteCrfNumber(Crfid);
		System.out.println("iam in controllerSFsadf");
		Gson u = new GsonBuilder().excludeFieldsWithoutExposeAnnotation().setPrettyPrinting().create();
		String json = u.toJson(Crfid);
		return json;
	}

/*@RequestMapping(value="/pageCount", method = RequestMethod.GET) 
public @ResponseBody String  showPage( @ModelAttribute PatientTrail patienttrail){
	 List<PatientTrail> list =ed.list();
		 System.out.println("HEREEEEE Getting page3");
	
	long pc=ed.getPageCount();
	Gson u = new Gson();
	String json = u.toJson(pc);
	return json;   
	       
	    }  
@RequestMapping(value = "/list2", method = RequestMethod.GET, produces = "application/json")
public @ResponseBody String showList(@RequestParam int page, @ModelAttribute Experiment patienttrail) {
	List<Experiment> list = ed.list();

	Gson u = new Gson();
	String json = u.toJson(list);
	return json;
}*/

/*@RequestMapping(value="/projectNumber",method= RequestMethod.GET, produces = "application/json")
public @ResponseBody String showList(@RequestParam int project_Number, @ModelAttribute CrfNumber crfNumber) {
	List<CrfNumber> list = ed.list();*/
	

/*	Gson u = new Gson();
	String json = u.toJson(list);
	return json;*/
	
@RequestMapping(value = "/list3", method = RequestMethod.GET, produces = "application/json")
public @ResponseBody String showList() {
	List<CrfNumber> list = ed.list();
	Gson x = new Gson();
	String json = x.toJson(list);
	return json;
}
	
}
