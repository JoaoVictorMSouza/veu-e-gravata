package dao;

import model.*;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class ProdutoCasalDao {
    public ProdutoCasal getProdutoByIdCasal(Casal casal) {

        String sql = "SELECT TB_PRODUTO.*, TB_PRODUTO_CASAL.* FROM TB_PRODUTO_CASAL LEFT JOIN TB_PRODUTO ON TB_PRODUTO.ID_PRODUTO = TB_PRODUTO_CASAL.FK_PRODUTO WHERE TB_PRODUTO_CASAL.FK_CASAL = ?";

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

    public void updateProdutoCasal(int idCasal, int idProduto, int idUsuario, int idProdutoCasal) {
        String sql = "UPDATE TB_PRODUTO_CASAL SET TG_RESERVADO = ?, FK_USUARIO = ? WHERE FK_PRODUTO = ? AND FK_CASAL = ? AND ID_PRODUTO_CASAL = ?;";

        try {
            Connection connection = DriverManager.getConnection("jdbc:h2:~/test", "sa", "sa");

            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setBoolean(1, true);
            preparedStatement.setInt(2, idUsuario);
            preparedStatement.setInt(3, idProduto);
            preparedStatement.setInt(4, idCasal);
            preparedStatement.setInt(5, idProdutoCasal);
            preparedStatement.execute();

            connection.close();

        } catch (Exception e) {
            System.out.println("Erro: " + e.getMessage());
        }
    }

    public Boolean verificarSeExisteProdutoCasalEstaReservado(int idProduto, int idCasal, int idProdutoCasal) {
        String sql = "SELECT * FROM TB_PRODUTO_CASAL WHERE FK_PRODUTO = ? AND FK_CASAL = ? AND ID_PRODUTO_CASAL = ?";

        try {
            Connection connection = DriverManager.getConnection("jdbc:h2:~/test", "sa", "sa");

            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1, idProduto);
            preparedStatement.setInt(2, idCasal);
            preparedStatement.setInt(3, idProdutoCasal);

            ResultSet resultSet = preparedStatement.executeQuery();

            while (resultSet.next()){
                boolean isProdutoReservado = resultSet.getBoolean("TG_RESERVADO");

                return isProdutoReservado;
            }

            return false;
        } catch (Exception e) {
            System.out.println("Erro: " + e.getMessage());
            return false;
        }
    }

    public int verificarSeExisteProdutoCasalByIdProdutoEIdCasal(int idProduto, int idCasal) {
        String sql = "SELECT * FROM TB_PRODUTO_CASAL WHERE FK_PRODUTO = ? AND FK_CASAL = ?";

        try {
            Connection connection = DriverManager.getConnection("jdbc:h2:~/test", "sa", "sa");

            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1, idProduto);
            preparedStatement.setInt(2, idCasal);

            ResultSet resultSet = preparedStatement.executeQuery();

            while (resultSet.next()){
                int idProdutoCasal = resultSet.getInt("ID_PRODUTO_CASAL");

                return idProdutoCasal;
            }

            return -1;
        } catch (Exception e) {
            System.out.println("Erro: " + e.getMessage());
            return -1;
        }
    }

    public void removerRegistrosDeUmUsuario(Usuario usuario){
        String sql = "UPDATE TB_PRODUTO_CASAL SET FK_USUARIO = NULL, TG_RESERVADO = 0 WHERE FK_USUARIO = ?;";

        try {
            Connection connection = DriverManager.getConnection("jdbc:h2:~/test", "sa", "sa");

            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1, usuario.getId());
            preparedStatement.execute();

            connection.close();
        } catch (Exception e) {
            System.out.println("Erro: " + e.getMessage());
        }
    }
}
