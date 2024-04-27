package model;

public class ProdutoCasal {
    private Casal casal;
    private Produto produto;
    private boolean isReservado;

    public Casal getCasal() {
        return casal;
    }

    public void setCasal(Casal casal) {
        this.casal = casal;
    }

    public Produto getProduto() {
        return produto;
    }

    public void setProduto(Produto produto) {
        this.produto = produto;
    }

    public ProdutoCasal() {
    }

    public ProdutoCasal(Casal casal, Produto produto, boolean isReservado) {
        this.casal = casal;
        this.produto = produto;
        this.isReservado = isReservado;
    }
}
