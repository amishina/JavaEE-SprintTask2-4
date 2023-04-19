package kz.bitlab.techorda.servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import kz.bitlab.techorda.db.DBManager;
import kz.bitlab.techorda.db.Tasks;

import java.io.IOException;

@WebServlet(value = "/save-task")
public class SaveTaskServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        long id = Long.parseLong(request.getParameter("task_id"));
        String name = request.getParameter("task-name");
        String description = request.getParameter("task-description");
        String deadline = request.getParameter("task-deadline");
        String status = request.getParameter("task-status");


        Tasks task = DBManager.getTask(id);
        if (task!=null && !name.isEmpty() && !description.isEmpty() && !deadline.isEmpty() ) {
            task.setName(name);
            task.setDescription(description);
            task.setDeadlineDate(deadline);
            task.setStatus(status);

            DBManager.uodateTask(task);

            response.sendRedirect("/details?task_id="+id);
        } else {
            response.sendRedirect("/");
        }
    }
}
