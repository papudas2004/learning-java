package com.example;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import java.util.Date;
import java.util.List;

public class App {

    public static void main(String[] args) {

        SessionFactory factory = new Configuration()
                .configure("hibernate.cfg.xml")
                .addAnnotatedClass(User.class)
                .addAnnotatedClass(Book.class)
                .addAnnotatedClass(Issue.class)
                .buildSessionFactory();

        Session session = factory.openSession();
        Transaction tx = session.beginTransaction();

        try {

            // CREATE
            User user = new User("ALi");
            session.save(user);

            Book book = new Book("Python ", "James ", new Date());
            session.save(book);

            Issue issue = new Issue();
            issue.setUser(user);
            issue.setBook(book);
            issue.setIssueDate(new Date());
            issue.setReturnDate(new Date());

            session.save(issue);

            tx.commit();
            session.close();

            System.out.println("Records inserted successfully");

            // READ
            Session readSession = factory.openSession();

            List<Book> books = readSession.createQuery("from Book", Book.class).list();

            for (Book b : books) {
                System.out.println(b.getBookId() + " " + b.getTitle() + " " + b.getAuthor());
            }

            readSession.close();

            // UPDATE
            Session updateSession = factory.openSession();
            Transaction tx2 = updateSession.beginTransaction();

            Book updateBook = updateSession.get(Book.class, 2);

            if (updateBook != null) {
                updateBook.setTitle("Advanced Java");
                updateSession.update(updateBook);
                System.out.println("Book updated");
            } else {
                System.out.println("Book not found");
            }

            tx2.commit();
            updateSession.close();

            // DELETE
            Session deleteSession = factory.openSession();
            Transaction tx3 = deleteSession.beginTransaction();

            Issue deleteIssue = deleteSession.get(Issue.class, 2);
            if (deleteIssue != null) {
                deleteSession.delete(deleteIssue);
            }

            Book deleteBook = deleteSession.get(Book.class, 2);
            if (deleteBook != null) {
                deleteSession.delete(deleteBook);
                System.out.println("Book deleted");
            } else {
                System.out.println("Book not found");
            }

            tx3.commit();
            deleteSession.close();

        } finally {
            factory.close();
        }
    }
}