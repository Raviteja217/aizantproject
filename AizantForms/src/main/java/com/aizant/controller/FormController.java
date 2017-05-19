package com.aizant.controller;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.aizant.DAO.UserDAO;
import com.aizant.model.User;

@Controller
public class FormController {
	@Autowired
	private UserDAO userDao;
	@Autowired
	private User user;
	SessionFactory sessionFactory;
	@RequestMapping("/Subject_Form")
	public ModelAndView Subject_Form() {
		ModelAndView sub = new ModelAndView("Subject_Form");
		return sub;
	}
	@RequestMapping("/Form2")
	public ModelAndView Form2() {
		ModelAndView f1 = new ModelAndView("AZ_Form_2");
		return f1;
	}
	@RequestMapping("/Form3")
	public ModelAndView Form3() {
		ModelAndView f1 = new ModelAndView("AZ_Form_3");
		return f1;
	}
	@RequestMapping("/Form4")
	public ModelAndView Form4() {
		ModelAndView f2 = new ModelAndView("AZ_Form_4");
		return f2;
	}
	@RequestMapping("/Form5")
	public ModelAndView Form5() {
		ModelAndView f3 = new ModelAndView("AZ_Form_5");
		return f3;
	}
	@RequestMapping("/Form6")
	public ModelAndView Form6() {
		ModelAndView f4 = new ModelAndView("AZ_Form_6");
		return f4;
	}
	@RequestMapping("/Form7")
	public ModelAndView Form7() {
		ModelAndView f5 = new ModelAndView("AZ_Form_7");
		return f5;
	}
	@RequestMapping("/Form8")
	public ModelAndView Form8() {
		ModelAndView f6 = new ModelAndView("AZ_Form_8");
		return f6;
	}
	@RequestMapping("/Form9")
	public ModelAndView Form9() {
		ModelAndView f7 = new ModelAndView("AZ_Form_9");
		return f7;
	}
	@RequestMapping("/Form10")
	public ModelAndView Form10() {
		ModelAndView f8 = new ModelAndView("AZ_Form_10");
		return f8;
	}
	@RequestMapping("/Form11")
	public ModelAndView Form11() {
		ModelAndView f9 = new ModelAndView("AZ_Form_11");
		return f9;
	}
	@RequestMapping("/Form12")
	public ModelAndView Form12() {
		ModelAndView f10 = new ModelAndView("AZ_Form_12");
		return f10;
	}
	@RequestMapping("/Form13")
	public ModelAndView Form13() {
		ModelAndView f11 = new ModelAndView("AZ_Form_13");
		return f11;
	}
	@RequestMapping("/Form14")
	public ModelAndView Form14() {
		ModelAndView f12 = new ModelAndView("AZ_Form_14");
		return f12;
	}
	@RequestMapping("/Form15")
	public ModelAndView Form15() {
		ModelAndView f13 = new ModelAndView("AZ_Form_15");
		return f13;
	}
	@RequestMapping("/Form16")
	public ModelAndView Form16() {
		ModelAndView f14 = new ModelAndView("AZ_Form_16");
		return f14;
	}
}
