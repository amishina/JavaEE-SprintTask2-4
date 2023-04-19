<%@ page import="java.util.ArrayList" %>
<%@ page import="kz.bitlab.techorda.db.Tasks" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Details</title>
    <%@include file="head.jsp"%>
</head>
<body>

    <div class="container mt-3">
        <div class="row">
            <%@include file="navbar.jsp"%>
        </div>
        <%
            Tasks task = (Tasks) request.getAttribute("taskDetails");
            if (task!=null) {
        %>
            <div class="row mt-3">
                <div class="col-6 mx-auto">
                    <div class="row">
                        <div class="col-12">
                            <label>Task name: </label>
                        </div>
                    </div>
                    <div class="row mt-2">
                        <div class="col-12">
                            <input type="text" class="form-control" readonly value="<%=task.getName()%>">
                        </div>
                    </div>
                    <div class="row mt-3">
                        <div class="col-12">
                            <label>Description: </label>
                        </div>
                    </div>
                    <div class="row mt-2">
                        <div class="col-12">
                            <textarea  class="form-control" readonly rows="5"><%=task.getDescription()%></textarea>
                        </div>
                    </div>
                    <div class="row mt-3">
                        <div class="col-12">
                            <label>Deadline date: </label>
                        </div>
                    </div>
                    <div class="row mt-2">
                        <div class="col-12">
                            <input type="text" class="form-control" readonly value="<%=task.getDeadlineDate()%>">
                        </div>
                    </div>
                    <div class="row mt-3">
                        <div class="col-12">
                            <label>Task status: </label>
                        </div>
                    </div>
                    <div class="row mt-2">
                        <div class="col-12">
                            <input type="text" class="form-control" readonly value="<%=task.getStatus()%>">
                        </div>
                    </div>

                    <div class="row mt-3">
                        <div class="col-12">
                            <button type="button" class="btn btn-primary btn-sm" data-bs-toggle="modal" data-bs-target="#editTask">
                                Edit task
                            </button>

                            <button type="button" class="btn btn-danger btn-sm ms-2" data-bs-toggle="modal" data-bs-target="#deleteTask">
                                Delete task
                            </button>

                        </div>
                    </div>

                    <!-- Modal Delete Task-->
                    <div class="modal fade" id="deleteTask" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <form action="/delete-task" method="post">
                                    <input type="hidden" name="id" value="<%=task.getId()%>">
                                    <div class="modal-header">
                                        <h1 class="modal-title fs-5">Confirm Delete</h1>
                                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                    </div>
                                    <div class="modal-body">
                                        <h5 class="text-center">Are you sure?</h5>
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">NO</button>
                                        <button type="submit" class="btn btn-danger">YES</button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                    <!-- Modal Edit Task-->
                    <div class="modal fade" id="editTask" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                        <div class="modal-dialog modal-lg">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h1 class="modal-title fs-5" id="staticBackdropLabel">Edit task</h1>
                                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                </div>
                                <div class="modal-body">
                                    <form action="/save-task" method="post">
                                        <input type="hidden" name="task_id" value="<%=task.getId()%>">
                                        <div class="row">
                                            <div class="col-12">
                                                <label>Task name: </label>
                                            </div>
                                        </div>
                                        <div class="row mt-2">
                                            <div class="col-12">
                                                <input type="text" class="form-control" name="task-name" value="<%=task.getName()%>">
                                            </div>
                                        </div>
                                        <div class="row mt-3">
                                            <div class="col-12">
                                                <label>Description: </label>
                                            </div>
                                        </div>
                                        <div class="row mt-2">
                                            <div class="col-12">
                                                <textarea name="task-description" class="form-control" rows="5"><%=task.getDescription()%></textarea>
                                            </div>
                                        </div>
                                        <div class="row mt-3">
                                            <div class="col-12">
                                                <label>Deadline Date: </label>
                                            </div>
                                        </div>
                                        <div class="row mt-2">
                                            <div class="col-12">
                                                <input type="text" class="form-control" name="task-deadline" value="<%=task.getDeadlineDate()%>">
                                            </div>
                                        </div>
                                        <div class="row mt-3">
                                            <div class="col-12">
                                                <label>Task status: </label>
                                            </div>
                                        </div>
                                        <div class="row mt-2">
                                            <div class="col-12">
                                                <select class="form-select" name="task-status" value="<%=task.getStatus()%>">
                                                    <option>No</option>
                                                    <option>Yes</option>
                                                </select>
                                            </div>
                                        </div>

                                        <div class="row mt-3">
                                            <div class="col-12">
                                                <button class="btn btn-primary">SAVE TASK</button>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        <%
            } else {
        %>
                <h3 class="text-center">TASK NOT FOUND</h3>
        <%
            }
        %>
    </div>
</body>
</html>
