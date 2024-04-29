package dao;

import model.Casal;
import model.Produto;
import model.ProdutoCasal;
import model.ProdutoComplementar;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class ProdutoCasalDao {

    public ProdutoCasal getProdutoByIdCasal(Casal casal) {

        String sql = "SELECT TB_PRODUTO.*, TB_PRODUTO_CASAL.* FROM TB_PRODUTO_CASAL LEFT JOIN TB_PRODUTO ON TB_PRODUTO.ID_PRODUTO = TB_PRODUTO_CASAL.FK_PRODUTO WHERE TB_CASAL.CD_CASAL = ?";

        try{
            Connection connection = DriverManager.getConnection("jdbc:h2:~/test", "sa", "sa");

            PreparedStatement preparedStatement = connection.prepareStatement(sql);

            preparedStatement.setInt( 1, casal.getId());

            ResultSet resultSet = preparedStatement.executeQuery();
            ArrayList<ProdutoComplementar> listaProduto = new ArrayList<ProdutoComplementar>();
            while (resultSet.next()){
                int idProduto = resultSet.getInt("TB_PRODUTO.ID_PRODUTO");
                String nomeProduto = resultSet.getString("TB_PRODUTO.DS_NOME");
                double vlProduto = resultSet.getDouble("TB_PRODUTO.VL_PRECO");
                String hxFotoProduto = resultSet.getString("TB_PRODUTO.HX_FOTO_PRODUTO");
                String dsFotoProduto = resultSet.getString("TB_PRODUTO.DS_FOTO_PRODUTO");
                String nsu = resultSet.getString("TB_PRODUTO.DS_NSU");
                String descricao = resultSet.getString("TB_PRODUTO.DS_PRODUTO");

                Produto produto = new Produto(idProduto, vlProduto, hxFotoProduto, dsFotoProduto, nsu, descricao, nomeProduto);

                boolean isProdutoReservado = resultSet.getBoolean("TB_PRODUTO_CASAL.TG_RESERVADO");

                ProdutoComplementar produtoComplementar = new ProdutoComplementar(produto, isProdutoReservado);

                listaProduto.add(produtoComplementar);
            }

            return new ProdutoCasal(casal, listaProduto);
        } catch (Exception e){
            System.out.println("Error:" + e.getMessage());
            return null;
        }
    }
}
