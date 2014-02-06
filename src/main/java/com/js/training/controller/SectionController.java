package com.js.training.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("section")
public class SectionController {
	
	private static final Integer TOTAL_SECTIONS = 100;
	
	@RequestMapping("{section}")
	public ModelAndView getSection(@PathVariable Integer section){
		Map<String, Object> model = new HashMap<String, Object>();
		model.put("section", section);
		if(section == TOTAL_SECTIONS){
			model.put("nextSection", "finish");
		}
		else{
			model.put("nextSection", section + 1);
		}
		return new ModelAndView("section", model);
	}

}
