package com.panchalprogrammingacademy;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import javax.annotation.PostConstruct;
import java.util.ArrayList;
import java.util.List;
import java.util.NoSuchElementException;

@Controller
@RequestMapping("")
public class HelloController {
    private List<student> students = new ArrayList<>();

    @PostConstruct
    public void init() {
        students.add(new student(3,"chaimaa", "060908776", "Beni Mellal"));
        students.add(new student( 2,"imane", "060908775", "Agadir"));
    }

    private int idCounter = 1;
    @GetMapping("/")
    public String home(ModelMap modelMap){
        return "home";
    }
    @GetMapping("/hello_world")
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
    @GetMapping("/editStudent/{id}")
    public String editStudentForm(@PathVariable int id, Model model) {
        student student = findStudentById(id);
        model.addAttribute("student", student);
        return "editStudent";
    }

    @PostMapping("/editStudent/{id}")
    public String editStudentSubmit(@PathVariable int id, @ModelAttribute student student) {
        student existingStudent = findStudentById(id);
        if (existingStudent != null) {
            existingStudent.setName(student.getName());
            existingStudent.setStudentId(student.getStudentId());
            existingStudent.setEmail(student.getEmail());
        }
        return "redirect:/";
    }
    @GetMapping("/deleteStudent/{id}")
    public String deleteStudent(@PathVariable Long id) {
        students.removeIf(student -> student.getId()==id);
        return "redirect:/";
    }
    private student findStudentById(int id) {
        return students.stream()
                .filter(student -> student.getId()==id)
                .findFirst()
                .orElseThrow(() -> new NoSuchElementException("Aucun étudiant avec cet ID trouvé"));
    }

}

