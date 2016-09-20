package ir.yasharne.springmvc.controller;

import ir.yasharne.springmvc.model.Student;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.validation.Valid;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by yashar on 9/19/16.
 */
@Controller
@RequestMapping(value = "/")
public class HelloWorldController {

    @RequestMapping(method = RequestMethod.GET)
    public String newRegistration(ModelMap model){
        Student student = new Student();
        model.addAttribute("student", student);
        return "enroll";
    }

    @RequestMapping(method = RequestMethod.POST)
    public String saveRegistration(@Valid Student student, BindingResult result, ModelMap model){
        if (result.hasErrors()){
            return "enroll";
        }
        model.addAttribute("success", "Dear" + student.getFirstName() + ", your Registration completed successfully");
        return "success";
    }

    @ModelAttribute("sections")
    public List<String> initializeSections(){
        List<String> sections = new ArrayList<String>();
        sections.add("کارشناسی");
        sections.add("تحصیلات تکمیلی");
        sections.add("محقق");
        return sections;
    }

    @ModelAttribute("countries")
    public List<String> initializeCountries(){
        List<String> countries = new ArrayList<String>();
        countries.add("ایران");
        countries.add("آمریکا");
        countries.add("کانادا");
        countries.add("فرانسه");
        countries.add("آلمان");
        countries.add("ایتالیا");
        countries.add("سایر");
        return countries;
    }

    @ModelAttribute("subjects")
    public List<String> initializeSubjects(){
        List<String> subjects = new ArrayList<String>();
        subjects.add("فیزیک");
        subjects.add("شیمی");
        subjects.add("علوم اجتماعی");
        subjects.add("علوم سیاسی");
        subjects.add("علوم کامپیوتر");
        subjects.add("ریاضیات");
        return subjects;
    }


}
