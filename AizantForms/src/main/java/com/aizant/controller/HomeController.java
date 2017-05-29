package com.aizant.controller;

import java.beans.Encoder;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.aizant.DAO.UserDAO;
import com.aizant.Services.IUserService;
import com.aizant.Services.UserService;
import com.aizant.model.CreateProject;
import com.aizant.model.User;
import com.aizant.model.UserPassword;
import com.google.gson.Gson;

@Controller
public class HomeController {
	/*
	 * ------------------------------------- DAO declaration
	 * --------------------------------------
	 */

	@Autowired
	private UserDAO userDao;

	@Autowired
	private IUserService userService;
	@Autowired
	PasswordEncoder passwordEncoder;

	SessionFactory sessionFactory;

	/*
	 * ------------------------------------- home Page
	 * --------------------------------------
	 */
	@RequestMapping("/")
	public ModelAndView display() {
		ModelAndView m4 = new ModelAndView("login");
		return m4;
	}

	/*
	 * ------------------------------------- View All Users
	 * --------------------------------------
	 */
	@RequestMapping("/show_user")
	public ModelAndView retriveRecords() {
		ModelAndView m1 = new ModelAndView("show_user");

		return m1;
	}
	@RequestMapping("/assign_forms")
	public ModelAndView forms() {
		ModelAndView m1 = new ModelAndView("assign_forms");

		return m1;
	}
	@RequestMapping("/SampleReport")
	public ModelAndView SampleReport() {
		ModelAndView m1 = new ModelAndView("SampleReport");
		return m1;
	}


	@RequestMapping("/ChangePasswordForm")
	public ModelAndView changePass() {
		ModelAndView m1 = new ModelAndView("ChangePasswordForm");

		return m1;
	}

	@RequestMapping("/ProcessChangePWD")
	public ModelAndView process() {
		ModelAndView m1 = new ModelAndView("ProcessChangePWD");

		return m1;
	}

	@RequestMapping("/Forms")
	public ModelAndView Form() {
		ModelAndView m1 = new ModelAndView("Forms");

		return m1;
	}

	/*
	 * ------------------------------------- Edit User
	 * --------------------------------------
	 */
	@RequestMapping(value = "edit_user", method = RequestMethod.GET)
	public ModelAndView edituser(@RequestParam int id, @ModelAttribute("User") User user) {
		User u1 = userDao.get(id);
		return new ModelAndView("edit_user", "user", u1);
	}

	@RequestMapping(value = "change_password", method = RequestMethod.GET)
	public ModelAndView changePassword(@Valid @RequestParam int id,@ModelAttribute("User") User user) {

		User u1 = userDao.get(id);
		String password=user.getPassword();
		UserPassword up=new UserPassword();
		CharSequence userPassword = up.getUserPassword();
		passwordEncoder.matches(userPassword, password);
		// userService.registerNewUserAccount(userDao.getPassword(password));
		return new ModelAndView("change_password", "user", u1);
	}
	/*
	 * ------------------------------------- Update User
	 * --------------------------------------
	 */

	@RequestMapping(value = "/update_user", method = RequestMethod.POST)
	public ModelAndView updateuser(HttpServletRequest request, @RequestParam int id,
			@ModelAttribute("User") User user) {
		System.out.println(user.getId());
		user.setId(id);
		userDao.saveOrUpdate(user);
		return new ModelAndView("redirect:/show_user");
	}

	@RequestMapping(value = "/update_user1", method = RequestMethod.POST)
	public ModelAndView updateuserpasword(HttpServletRequest request, @RequestParam int id,
		 @ModelAttribute("User") User user) {
		System.out.println(user.getId());
		user.setId(id);
		userDao.saveOrUpdate(user);
	
		userService.registerNewUserAccount(user);
		return new ModelAndView("redirect:/Subject_Form");
	}
	/*
	 * ------------------------------------- Store User
	 * --------------------------------------
	 */
	@RequestMapping(value = "/store_user", method = RequestMethod.POST)
	public ModelAndView addUser(HttpServletRequest request,@Valid @ModelAttribute("User") User user, BindingResult result) {
		if (result.hasErrors()) {
			System.out.println("hi");

			return new ModelAndView("redirect:/add_user");
		}
		String filename = user.getImg().getOriginalFilename();
		// product.getImg().getOriginalFilename();
		System.out.println("KAMA RAJU..........." + filename);
		user.setImage(filename);
		try {
			byte[] bytes = new byte[user.getImg().getInputStream().available()];

			user.getImg().getInputStream().read(bytes);
			
			BufferedInputStream buffer = new BufferedInputStream(user.getImg().getInputStream());
			MultipartFile file = user.getImg();
			String path = request.getServletContext().getRealPath("/") + "resources/images";

			File rootPath = new File(path);

			if (!rootPath.exists())
				rootPath.mkdirs();

			File store = new File(rootPath.getAbsolutePath() + "/" + filename);

			System.out.println("Image path :" + path);

			OutputStream os = new FileOutputStream(store);

			os.write(bytes);
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		userService.registerNewUserAccount(user);
		userDao.saveOrUpdate(user);
		return new ModelAndView("redirect:/show_user");
	}
	/*
	 * ------------------------------------- Page Count
	 * --------------------------------------
	 */

	@RequestMapping(value = "/pageCount", method = RequestMethod.GET)
	public @ResponseBody String showPage(@ModelAttribute User user) {
		List<User> list;
		System.out.println("HEREEEEE Getting page3");

		long pc = userDao.getPageCount();
		Gson u = new Gson();
		String json = u.toJson(pc);
		return json;

	}

	/*
	 * ------------------------------------- List User(retrieving)
	 * --------------------------------------
	 */
	@RequestMapping(value = "/list", method = RequestMethod.GET, produces = "application/json")
	public @ResponseBody String showList2(@RequestParam int page, @ModelAttribute User user,
			@RequestParam(value = "", required = false) String filter) {
		List<User> list;

		System.out.println("Page number " + page);
		if (page > 0) {

			System.out.println("Page Count" + userDao.getPageCount());
			System.out.println("Getting page2");
			list = userDao.getUserByPage(page, 10);
		} else {
			System.out.println("Getting all users");
			list = userDao.list();
		}
		Gson u = new Gson();
		String json = u.toJson(list);
		return json;
	}

	/*
	 * ------------------------------------- Add User
	 * --------------------------------------
	 */
	@RequestMapping("/create_user")
	public ModelAndView display4() {
		ModelAndView m4 = new ModelAndView("create_user");
		return m4;
	}

	@ModelAttribute("User")
	public User createProduct() {
		return new User();
	}

	/*
	 * ------------------------------------- Login Error(fail to login)
	 * --------------------------------------
	 */
	@RequestMapping(value = "/fail2login", method = RequestMethod.GET)
	public ModelAndView loginerror(ModelMap model) {
		System.out.println("hello...........................................");

		return new ModelAndView("login", "error", true);
	}

	/*
	 * ------------------------------------- Welcome Page
	 * --------------------------------------
	 */
	@RequestMapping(value = "/welcome", method = RequestMethod.GET)
	public ModelAndView checkUserOne(HttpServletRequest request, HttpServletResponse response, HttpSession session)
			throws Exception {

		System.out.println("hi");
		/*
		 * ------------------------------------- Admin Page
		 * --------------------------------------
		 */
		if (request.isUserInRole("ROLE_ADMIN")) {
			Authentication auth = SecurityContextHolder.getContext().getAuthentication();
			String str = auth.getName(); // get logged in username
			session = request.getSession(true);
			session.setAttribute("loggedInUser", str);
			ModelAndView m1 = new ModelAndView("Admin");
			return m1;
		} else {
			/*
			 * ------------------------------------- Login User Page
			 * --------------------------------------
			 */
			Authentication auth = SecurityContextHolder.getContext().getAuthentication();
			String str = auth.getName(); // get logged in username
			session = request.getSession(true);
			session.setAttribute("loggedInUser", str);
			// ModelAndView m2 = new ModelAndView("display_study");
			return new ModelAndView("redirect:/Subject_Form");
		}

	}

	/*
	 * ------------------------------------- View User
	 * --------------------------------------
	 */
	@RequestMapping(value = "view_user", method = RequestMethod.GET)
	public ModelAndView viewuser(@RequestParam int id, @ModelAttribute User user) {
		System.out.println(id);
		System.out.println(user.getId());
		User use = userDao.get(id);
		return new ModelAndView("view_user", "user", use);
		// return new ModelAndView("viewproduct");
	}

	/*
	 * ------------------------------------- Delete User
	 * --------------------------------------
	 */
	@RequestMapping(value = "/deleteuser", method = RequestMethod.POST)
	public @ResponseBody String deleteuser(@RequestParam int userId) {
		System.out.println("hello " + userId);

		userDao.delete(userId);
		System.out.println("deleted user Id :" + userId);
		Gson u = new Gson();
		String json = u.toJson(userId);
		return json;
	}
	@RequestMapping(value = "user", method = RequestMethod.GET)
	public @ResponseBody String pinuser(@RequestParam String pin, @ModelAttribute User user) {
		System.out.println("details user :" + pin);
		userDao.getByPin(pin);
		System.out.println("details :" + pin);
		Gson u = new Gson();
		String json = u.toJson(pin);
		return json;
	}
	
	

	/*
	 * ------------------------------------- Log out User
	 * --------------------------------------
	 */
	@RequestMapping("logoutsuccess")
	public ModelAndView logoutpage() {
		ModelAndView mv9 = new ModelAndView("logoutsuccess");
		return mv9;
	}

	@RequestMapping(value = "/Logout", method = RequestMethod.GET)
	public void logout(HttpServletRequest request, HttpServletResponse response, HttpSession session)
			throws ServletException, IOException {
		HttpSession newsession = request.getSession(false);
		if (newsession != null) {
			newsession.invalidate();

		}
		response.sendRedirect("j_spring_security_logout");

	}
	@RequestMapping(value = "/j_spring_security_check1", method = RequestMethod.GET)
	public ModelAndView checkUserOn(HttpServletRequest request, HttpServletResponse response, HttpSession session)
			throws Exception {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		String str = auth.getName(); // get logged in username
		session = request.getSession(true);
		session.setAttribute("loggedInUser", str);
		return new ModelAndView("redirect:/change_password4");
	}
	


	}

