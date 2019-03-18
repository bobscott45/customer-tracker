package dev.bobscott.customertracker.dao;

import dev.bobscott.customertracker.entity.Customer;

import java.util.List;

public interface CustomerDAO {
    List<Customer> getCustomers();
    void addCustomer(Customer customer);
    void updateCustomer(Customer customer);
    Customer getCustomer(long id);
}
