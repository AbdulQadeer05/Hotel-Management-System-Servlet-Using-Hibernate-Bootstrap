package com.controller;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class hibernate {

    private static SessionFactory sessionFactory;

    static {
        System.out.println("Loading Hibernate configuration...");
        try {
            sessionFactory = new Configuration().configure("hibernate.cfg.xml").buildSessionFactory();
            System.out.println("Hibernate SessionFactory created.");
        } catch (Exception e) {
            System.err.println("SessionFactory creation failed.");
            e.printStackTrace();
        }
    }

    public static SessionFactory getSessionFactory() {
        return sessionFactory;
    }
}
