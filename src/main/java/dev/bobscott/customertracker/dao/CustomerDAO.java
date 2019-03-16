package dev.bobscott.customertracker.dao;

import dev.bobscott.customertracker.entity.Customer;

import java.util.List;

public interface CustomerDAO {
    List<Customer> getCustomers();
}
