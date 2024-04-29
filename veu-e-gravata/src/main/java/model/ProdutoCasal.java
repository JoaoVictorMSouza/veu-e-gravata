package model;

import java.util.ArrayList;

public class ProdutoCasal {
    private Casal casal;
    private ArrayList<ProdutoComplementar> produtos;

    public Casal getCasal() {
        return casal;
    }

    public void setCasal(Casal casal) {
        this.casal = casal;
    }

    public ArrayList<ProdutoComplementar> getProdutos() {
        return produtos;
    }

    public void setProdutos(ArrayList<ProdutoComplementar> produtos) {
        this.produtos = produtos;
    }

    public ProdutoCasal() {
    }

    public ProdutoCasal(Casal casal, ArrayList<ProdutoComplementar> produtosComplementar) {
        this.casal = casal;
        this.produtos = produtosComplementar;
    }
}
