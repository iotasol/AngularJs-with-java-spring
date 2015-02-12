package com.demo.controller.login;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.demo.service.security.SecurityInfoProvider;

@Controller
public class CommonPageController {

	@Autowired
	private SecurityInfoProvider securityInfoProvider;

	/**
	 * Method to load User home
	 * 
	 * @return String
	 */
	@RequestMapping(value = "/user", method = RequestMethod.GET)
	public String userhome() {
		return "userHome";
	}

	/**
	 * Method to Load Welcome Page
	 * 
	 * @return ModelAndView
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public ModelAndView welcome() {

		ModelAndView model = new ModelAndView();
		if (securityInfoProvider.getCurrentUser() != null) {
			model.setViewName("userHome");
			return model;
		}
		model.setViewName("welcome");
		return model;
	}
}
