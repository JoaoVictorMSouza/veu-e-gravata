package model;

public class Casal {
    private int id;
    private String codigo;
    private String hxFotoCasal;
    private String fotoCasal;

    public String getFotoCasal() {
        return fotoCasal;
    }

    public void setFotoCasal(String fotoCasal) {
        this.fotoCasal = fotoCasal;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getCodigo() {
        return codigo;
    }

    public void setCodigo(String codigo) {
        this.codigo = codigo;
    }

    public String getHxFotoCasal() {
        return hxFotoCasal;
    }

    public void setHxFotoCasal(String hxFotoCasal) {
        this.hxFotoCasal = hxFotoCasal;
    }

    public Casal(int id, String codigo, String hxFotoCasal, String fotoCasal) {
        this.id = id;
        this.codigo = codigo;
        this.hxFotoCasal = hxFotoCasal;
        this.fotoCasal = fotoCasal;
    }

    public Casal() {
    }
}
