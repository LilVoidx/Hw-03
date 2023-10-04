package ru.itis.servlet;

import ru.itis.model.User;
import ru.itis.servlet.repository.UserRepository;
import ru.itis.servlet.implementations.UserRepositoryImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/user-by-age")
public class UserByAgeServlet extends HttpServlet {

    private static final String DB_URL = "jdbc:postgresql://localhost:5432/java";
    private static final String DB_USER = "java";
    private static final String DB_PASSWORD = "1234";

    private Connection connection;
    private UserRepository userRepository;

    @Override
    public void init() throws ServletException {
        try {
            Class.forName("org.postgresql.Driver");
            connection = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);
            userRepository = new UserRepositoryImpl(connection);
        } catch (ClassNotFoundException | SQLException e) {
            throw new RuntimeException(e);
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<User> userListByAge = new ArrayList<>();

        String ageParam = request.getParameter("age");

        if (ageParam != null && !ageParam.isEmpty()) {
            int age = Integer.parseInt(ageParam);
            userListByAge = userRepository.getUsersByAge(age);
        } else {
            userListByAge = userRepository.getAllUsers();
        }

        request.setAttribute("userListByAge", userListByAge);
        request.getRequestDispatcher("/jsp/view-users-by-age.jsp").forward(request, response);
    }
}
