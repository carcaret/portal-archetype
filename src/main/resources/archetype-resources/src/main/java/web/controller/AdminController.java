package ${groupId}.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("/admin")
public class AdminController {

    @RequestMapping("/menu")
    public ModelAndView menu(HttpServletRequest request) {
        return new ModelAndView("admin");
    }

}
