<%@ page import="java.util.ArrayList" %>
<%@ page import="kz.bitlab.techorda.db.Tasks" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Tasks</title>
    <%@include file="head.jsp"%>
</head>
    <body>
        <div class="container mt-3">
            <div class="row">
                <%@include file="navbar.jsp"%>
            </div>
            <div class="row mt-3">
                <div class="col-12">
                    <!-- Button trigger modal -->
                    <button type="button" class="btn btn-primary btn-sm" data-bs-toggle="modal" data-bs-target="#addTask">
                        + Add task
                    </button>
                    <!-- Modal -->
                    <div class="modal" tabindex="-1" id="addTask">
                        <div class="modal-dialog modal-lg">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h4 class="modal-title">New task</h4>
                                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                </div>
                                <div class="modal-body">
                                    <%@include file="addForm.jsp"%>
                                </div>
                             </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row mt-3">
                <div class="col-12">
                    <table class="table table-hover" >
                        <thead>
                            <tr>
                                <th>ID</th>
                                <th>TASK NAME</th>
                                <th>DEADLINE DATE</th>
                                <th>STATUS</th>
                                <th>DETAILS</th>
                            </tr>
                        </thead>
                        <tbody>
                            <%
                            ArrayList<Tasks> allTasks = (ArrayList<Tasks>) request.getAttribute("todoTasks");
                            if (allTasks!=null){
                                for (Tasks t : allTasks) {
                            %>
                                    <tr>
                                        <td><%=t.getId()%></td>
                                        <td><%=t.getName()%></td>
                                        <td><%=t.getDeadlineDate()%></td>
                                        <td><%=t.getStatus()%></td>
                                        <td>
                                            <a class="btn btn-primary btn-sm" href="/details?task_id=<%=t.getId()%>">DETAILS</a>
                                        </td>
                                    </tr>
                            <%
                                }
                            }
                            %>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </body>
</html>
