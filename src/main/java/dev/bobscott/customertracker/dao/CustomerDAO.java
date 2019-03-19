package dev.bobscott.customertracker.dao;

import dev.bobscott.customertracker.entity.Customer;

import java.util.List;

public interface CustomerDAO {
    List<Customer> getCustomers();
    void saveCustomer(Customer customer);
    Customer getCustomer(long id);
    void deleteCustomer(long id);
}
