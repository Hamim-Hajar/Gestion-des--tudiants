package com.panchalprogrammingacademy;

public class student {

        private int id;
        private String name;
        private String studentId;
        private String email;

    public student() {
    }

    public student(int id, String name, String studentId, String email) {
        this.id = id;
        this.name = name;
        this.studentId = studentId;
        this.email = email;
    }

    public String getName() {
            return name;
        }

        public void setName(String name) {
            this.name = name;
        }

        public int getId() {
            return id;
        }

        public void setId(int id) {
            this.id = id;
        }

        public String getStudentId() {
            return studentId;
        }

        public void setStudentId(String studentId) {
            this.studentId = studentId;
        }

        public String getEmail() {
            return email;
        }

        public void setEmail(String email) {
            this.email = email;
        }

    @Override
    public String toString() {
        return "student{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", studentId='" + studentId + '\'' +
                ", email='" + email + '\'' +
                '}';
    }
}


