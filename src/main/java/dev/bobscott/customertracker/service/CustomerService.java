package dev.bobscott.customertracker.service;

import dev.bobscott.customertracker.entity.Customer;

import java.util.List;

public interface CustomerService {
    List<Customer> getCustomers();
}
