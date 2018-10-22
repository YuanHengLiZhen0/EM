package com.ssm.demo.model;

public class Person {
    private long id;
    private String name;
    private String email;
    private int status;

    //getter  setter

    @Override
    public String toString(){
        return this.getId()+"---"+this.getName()+"---"+
                this.getEmail()+"---"+this.getStatus();
    }

    public long getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public int getStatus() {
        return status;
    }
}