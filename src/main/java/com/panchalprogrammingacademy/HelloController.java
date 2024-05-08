package com.panchalprogrammingacademy;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.PostConstruct;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("")
public class HelloController {

    private List<student> students = new ArrayList<>();


    @PostConstruct
    public void init() {
        students.add(new student(1,"chaimaa", "060908776", "Beni Mellal"));
        students.add(new student( 2,"imane", "060908775", "Agadir"));
    }

    private int idCounter = 1;
    @GetMapping("/")
    public String getAllStudents(ModelMap modelMap) {
        modelMap.addAttribute("students", students);
        return "hello_world";
    }

    @GetMapping("/addStudent")
    public String addStudentForm(ModelMap modelMap) {
        modelMap.addAttribute("student", new student());
        return "addStudent";
    }
    @PostMapping("/addStudent")
    public String addStudentSubmit(@ModelAttribute student student) {
        System.out.println(student);
        student.setId(idCounter++);
        students.add(student);
        return "redirect:/";
    }
}
