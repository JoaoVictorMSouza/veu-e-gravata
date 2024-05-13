package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import model.Produto;

public class ProdutoDao {
    public Produto getProdutoByIdProduto(int idProduto) {
        String sql = "SELECT * FROM TB_PRODUTO WHERE ID_PRODUTO = ?";

        try{
            Connection connection = DriverManager.getConnection("jdbc:h2:~/test", "sa", "sa");

            PreparedStatement preparedStatement = connection.prepareStatement(sql);

            preparedStatement.setInt( 1, idProduto);

            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()){
                int idProdutoResul = resultSet.getInt("ID_PRODUTO");
                String nomeProduto = resultSet.getString("DS_NOME");
                double vlProduto = resultSet.getDouble("VL_PRECO");
                String hxFotoProduto = resultSet.getString("HX_FOTO_PRODUTO");
                String dsFotoProduto = resultSet.getString("DS_FOTO_PRODUTO");
                String nsu = resultSet.getString("DS_NSU");
                String descricao = resultSet.getString("DS_PRODUTO");

                return new Produto(idProdutoResul, vlProduto, hxFotoProduto, dsFotoProduto, nsu, descricao, nomeProduto);
            }

            return null;
        } catch (Exception e){
            System.out.println("Error:" + e.getMessage());
            return null;
        }
    }
}
