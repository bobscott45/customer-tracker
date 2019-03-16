package dev.bobscott.webcustomertracker.controller;

import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletResponse;
import java.net.http.HttpRequest;
import java.net.http.HttpResponse;

@Controller
@RequestMapping("/customer")
public class CustomerController {
    @RequestMapping("/list")
    public String test() {
        return "list-customers";
    }
}
