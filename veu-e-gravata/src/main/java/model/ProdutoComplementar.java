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
}
