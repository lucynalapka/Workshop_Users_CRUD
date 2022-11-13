package pl.coderslab;

import javax.servlet.*;
import javax.servlet.annotation.*;
import javax.servlet.http.*;
import java.io.IOException;

@WebServlet(name = "UserAdd", value = "/user/add")
public class UserAdd extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        getServletContext().getRequestDispatcher("/users/add.jsp")
                .forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
//        if (username == null || username.isBlank() ||
//                email == null || email.isBlank() ||
//                password == null || password.isBlank()) {
        User user = new User();
            user.setName(name);
            user.setPassword(password);
            user.setEmail(email);
            UserDao userDao = new UserDao();
            userDao.create(user);
//            System.out.println(user);
            response.sendRedirect(request.getContextPath() + "/user/list");

        }
    }


