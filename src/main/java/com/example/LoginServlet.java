package com.example;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {

    @Override
    protected void doPost(
            HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        String username =
                request.getParameter("username");

        String password =
                request.getParameter("password");

        String usernameRegex =
                "^[a-zA-Z0-9]+$";

        String passwordRegex =
                "^(?=.*[a-z])(?=.*[A-Z])(?=.*\\d)(?=.*[@$!%*?&]).{8,}$";

        if (!username.matches(usernameRegex)) {

            response.getWriter().println(
                    "Invalid Username");

            return;
        }

        if (!password.matches(passwordRegex)) {

            response.getWriter().println(
                    "Invalid Password");

            return;
        }

        response.sendRedirect("health.jsp");
    }
}