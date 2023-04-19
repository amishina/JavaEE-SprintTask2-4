<form action="/add-task" method="post">

    <div class="row">
        <div class="col-12">
            <label>Task name: </label>
        </div>
    </div>
    <div class="row mt-2">
        <div class="col-12">
            <input type="text" class="form-control" name="task-name" placeholder="Insert name">
        </div>
    </div>
    <div class="row mt-3">
        <div class="col-12">
            <label>Task description: </label>
        </div>
    </div>
    <div class="row mt-2">
        <div class="col-12">
            <textarea name="task-description" class="form-control" rows="5" placeholder="Insert description"></textarea>
        </div>
    </div>
    <div class="row mt-3">
        <div class="col-12">
            <label>Deadline date: </label>
        </div>
    </div>
    <div class="row mt-2">
        <div class="col-12">
            <input type="text" class="form-control" name="task-deadline" placeholder="Insert deadline date (format dd/mm/yyyy)">
        </div>
    </div>

    <div class="row mt-3">
         <div class="col-12 float-end">
             <button class="btn btn-primary float-end">Add task</button>
        </div>
    </div>
</form>