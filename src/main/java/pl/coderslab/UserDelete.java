package pl.coderslab;

import javax.servlet.*;
import javax.servlet.annotation.*;
import javax.servlet.http.*;
import java.io.IOException;

@WebServlet(name = "UserDelete", value = "/user/delete")
public class UserDelete extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        UserDao userDao = new UserDao();
        UserDao.delete(Integer.parseInt(id));

            User[] users = UserDao.findAll();
            for (User u : users) {
                System.out.println(u);
            }
            request.setAttribute("users", UserDao.findAll());
        response.sendRedirect(request.getContextPath() + "/user/list");
        }



    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
