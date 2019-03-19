package dev.bobscott.customertracker.controller;

import dev.bobscott.customertracker.entity.Customer;
import dev.bobscott.customertracker.service.CustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.view.RedirectView;

import java.util.List;

@Controller
@RequestMapping("/customers")
public class CustomerController {

    @Autowired

    private CustomerService customerService;

    @GetMapping("")
    public String listCustomers(Model model) {
        List<Customer> customers = customerService.getCustomers();
        customers.sort((c1, c2) ->  c1.getLastName().compareTo(c2.getLastName()));
        model.addAttribute("customers", customers);
        return "list-customers";
    }

    @GetMapping("/new")
    public String newCustomer(Model model) {
        Customer customer = new Customer();
        model.addAttribute("customer", customer);
        return "edit-customer";
    }

    @PostMapping("/update")
    public String saveCustomer(@ModelAttribute("customer") Customer customer) {
        customerService.saveCustomer(customer);
        return ("redirect:/customers");
    }

    @GetMapping("/{id}")
    public String editCustomer(@PathVariable("id") String id, Model model) {
        Customer customer = customerService.getCustomer(Long.parseLong(id));
        model.addAttribute("customer", customer);
        return "edit-customer";
    }
}
