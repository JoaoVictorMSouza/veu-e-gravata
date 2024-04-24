package model;

public class Login {

    private String DS_EMAIL;
    private String DS_SENHA;

    public Login(String DS_EMAIL, String DS_SENHA) {
        this.DS_EMAIL = DS_EMAIL;
        this.DS_SENHA = DS_SENHA;
    }

    public String getDS_EMAIL() {
        return DS_EMAIL;
    }

    public String getDS_SENHA() {
        return DS_SENHA;
    }
}
