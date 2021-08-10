package com.lance.dojosurvey;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
public class MainController {
	@RequestMapping("/")
	public String index(){
		return "index.jsp";
	}
	@RequestMapping(value="/process", method=RequestMethod.POST)
	public String postSurvey(HttpSession session,
							@RequestParam(value="name") String name,
							@RequestParam(value="location") String location,
							@RequestParam(value="favorite") String favorite,
							@RequestParam(value="comment") String comment,
							RedirectAttributes redirctAttributes) {
		
		session.setAttribute("name", name);
		session.setAttribute("location", location);
		session.setAttribute("favorite", favorite);
		session.setAttribute("comment", comment);
		
		if(favorite.equals("Java")) {
			return "redirect:/java";
		}else {			
			return "redirect:/results";
		}
	}
	@RequestMapping("/results")
	public String showResults() {
		
		return "result.jsp";
	}
	@RequestMapping("/java")
	public String showJava() {
		return "java.jsp";
	}
}
