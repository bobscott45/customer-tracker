package dev.bobscott.customertracker.dao;

import dev.bobscott.customertracker.entity.Customer;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.datasource.embedded.DataSourceFactory;

import javax.transaction.Transactional;
import java.util.List;

public class CustomerDAOImpl implements CustomerDAO {

    @Autowired
    private SessionFactory sessionFactory;


    @Override
    @Transactional
    public List<Customer> getCustomers() {
        Session currentSession = sessionFactory.getCurrentSession();

        Query<Customer> query = currentSession.createQuery("from Customer", Customer.class);
        List<Customer> customers = ((Query) query).getResultList();

        return customers;
    }
}
