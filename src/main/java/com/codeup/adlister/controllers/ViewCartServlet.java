package com.codeup.adlister.controllers;
import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.User;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet (name = "ViewCartServlet", urlPatterns = "/cart")
public class ViewCartServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        User user = (User) request.getSession().getAttribute("user");
        String cart = "/cart";
        request.getSession().setAttribute("url", cart);
        if(user != null) {
            request.getRequestDispatcher("/WEB-INF/cart.jsp").forward(request, response);
        } else {
            response.sendRedirect("/login");
        }
    }
}