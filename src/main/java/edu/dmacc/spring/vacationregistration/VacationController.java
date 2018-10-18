package edu.dmacc.spring.vacationregistration;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class VacationController {
	@Autowired VacationDao dao;

	@RequestMapping(value = "/form")
	public ModelAndView vacation() {
		ModelAndView modelAndView = new ModelAndView();

		modelAndView.setViewName("vacationForm");
		modelAndView.addObject("vacation", new Vacation());

		return modelAndView;
	}
	
	@RequestMapping(value = "/result")
	public ModelAndView processVacation(Vacation vacation) {
		System.out.println("In processVacation");
		ModelAndView modelAndView = new ModelAndView();
		dao.insertVacation(vacation);
		System.out.println("Value in getVacationSpot" + vacation.getVacationSpot());
		modelAndView.setViewName("vacationResult");
		modelAndView.addObject("v", vacation);
		return modelAndView;
	}
	
	@RequestMapping(value = "/viewAll")
	public ModelAndView viewAll() {
		ModelAndView modelAndView = new ModelAndView();
		List<Vacation> allVacations = dao.getAllVacations();
		modelAndView.setViewName("viewAllVacations");
		modelAndView.addObject("all", allVacations);
		return modelAndView;
	}
	
	@Bean
	public VacationDao dao() {
		VacationDao bean = new VacationDao();
		return bean;
	}
}
