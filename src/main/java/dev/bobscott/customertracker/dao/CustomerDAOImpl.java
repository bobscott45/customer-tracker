package dev.bobscott.customertracker.dao;

import dev.bobscott.customertracker.entity.Customer;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.datasource.embedded.DataSourceFactory;
import org.springframework.stereotype.Repository;

import javax.transaction.Transactional;
import java.util.List;

@Repository
public class CustomerDAOImpl implements CustomerDAO {

    @Autowired
    private SessionFactory sessionFactory;


    @Override
    public List<Customer> getCustomers() {
        Session currentSession = sessionFactory.getCurrentSession();

        Query<Customer> query = currentSession.createQuery("from Customer", Customer.class);
        List<Customer> customers = ((Query) query).getResultList();

        return customers;
    }

    @Override
    public void saveCustomer(Customer customer) {
        Session currentSession = sessionFactory.getCurrentSession();
        currentSession.saveOrUpdate(customer);
    }

    @Override
    public Customer getCustomer(long id) {
        Session currentSession = sessionFactory.getCurrentSession();
        Customer customer = currentSession.find(Customer.class, id);
        return customer;
    }

    @Override
    public void deleteCustomer(long id) {
        Customer customer = getCustomer(id);
        Session currentSession = sessionFactory.getCurrentSession();
        currentSession.delete(customer);
    }
}
