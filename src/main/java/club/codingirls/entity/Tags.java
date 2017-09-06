package club.codingirls.entity;

public class Tags {
    private int id;
    private String name;
    private int number;
    private int createUserId;
    private int avaiable;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getNumber() {
        return number;
    }

    public void setNumber(int number) {
        this.number = number;
    }

    public int getCreateUserId() {
        return createUserId;
    }

    public void setCreateUserId(int createUserId) {
        this.createUserId = createUserId;
    }

    public int getAvaiable() {
        return avaiable;
    }

    public void setAvaiable(int avaiable) {
        this.avaiable = avaiable;
    }
}
