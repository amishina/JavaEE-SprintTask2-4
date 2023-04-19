package kz.bitlab.techorda.db;

public class Tasks {
    private long id;
    private String name;
    private String description;
    private String deadlineDate;
    private boolean status;

    public Tasks() {

    }

    public Tasks(long id, String name, String description, String deadlineDate) {
        this.id = id;
        this.name = name;
        this.description = description;
        this.deadlineDate = deadlineDate;
        this.status = false;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getDeadlineDate() {
        return deadlineDate;
    }

    public void setDeadlineDate(String deadlineDate) {
        this.deadlineDate = deadlineDate;
    }

    public boolean isStatus() {
        return status;
    }

    public String getStatus() {
        if(status) return "Yes";
        return "No";
    }

    public void setStatus(String status) {
        if(status.equals("Yes")) this.status = true;
        else this.status = false;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }
}
