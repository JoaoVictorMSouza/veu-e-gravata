package model;

public class ProdutoComplementar {
    private Produto produto;
    private boolean isReservado;

    public ProdutoComplementar() {
    }

    public ProdutoComplementar(Produto produto, boolean isReservado) {
        this.produto = produto;
        this.isReservado = isReservado;
    }

    public Produto getProduto() {
        return produto;
    }

    public void setProduto(Produto produto) {
        this.produto = produto;
    }

    public boolean isReservado() {
        return isReservado;
    }

    public void setReservado(boolean isReservado) {
        this.isReservado = isReservado;
    }
}
