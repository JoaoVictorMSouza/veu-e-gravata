package model;

public class Produto {
    private int id;
    private double preco;
    private String hxFotoProduto;
    private String dsFotoProduto;
    private String nsu;
    private String descricao;
    private String nome;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public double getPreco() {
        return preco;
    }

    public void setPreco(double preco) {
        this.preco = preco;
    }

    public String getHxFotoProduto() {
        return hxFotoProduto;
    }

    public void setHxFotoProduto(String hxFotoProduto) {
        this.hxFotoProduto = hxFotoProduto;
    }

    public String getDsFotoProduto() {
        return dsFotoProduto;
    }

    public void setDsFotoProduto(String dsFotoProduto) {
        this.dsFotoProduto = dsFotoProduto;
    }

    public String getNsu() {
        return nsu;
    }

    public void setNsu(String nsu) {
        this.nsu = nsu;
    }

    public String getDescricao() {
        return descricao;
    }

    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public Produto() {
    }

    public Produto(int id, double preco, String hxFotoProduto, String dsFotoProduto, String nsu, String descricao, String nome) {
        this.id = id;
        this.preco = preco;
        this.hxFotoProduto = hxFotoProduto;
        this.dsFotoProduto = dsFotoProduto;
        this.nsu = nsu;
        this.descricao = descricao;
        this.nome = nome;
    }
}
