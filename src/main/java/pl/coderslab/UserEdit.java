package pl.coderslab;

import javax.servlet.*;
import javax.servlet.annotation.*;
import javax.servlet.http.*;
import java.io.IOException;

@WebServlet(name = "UserEdit", value = "/user/edit")
public class UserEdit extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        UserDao userDao = new UserDao();
        User read = userDao.read(Integer.parseInt(id));
        request.setAttribute("user", read);
        getServletContext().getRequestDispatcher("/users/edit.jsp")
                .forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        User user = new User();
        int id = Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        user.setId(id);
        user.setName(name);
        user.setPassword(password);
        user.setEmail(email);
//        if (name == null || name.isBlank() ||
//                email == null || email.isBlank() ||
//                password == null || password.isBlank()) {
            UserDao userDao = new UserDao();
            userDao.update(user);
            response.sendRedirect(request.getContextPath() + "/user/list");
//        }
    }
}
