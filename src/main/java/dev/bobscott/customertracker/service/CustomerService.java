package dev.bobscott.customertracker.service;

import dev.bobscott.customertracker.entity.Customer;

import java.util.List;

public interface CustomerService {
    List<Customer> getCustomers();
    void addCustomer(Customer customer);
    Customer getCustomer(long id);
    void updateCustomer(Customer customer);
}
