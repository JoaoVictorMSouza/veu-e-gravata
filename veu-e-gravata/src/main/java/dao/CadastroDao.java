package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import model.Cadastro; // Importe a classe Cadastro corretamente

public class CadastroDao {

    public void createCadastro(Cadastro cadastro) {

        String sql = "INSERT INTO TB_USUARIO (DS_NOME, DS_CPF, DS_EMAIL, DS_SENHA) VALUES (?, ?, ?, ?);";

        try {
            Connection connection = DriverManager.getConnection("jdbc:h2:~/test", "sa", "sa");
            System.out.println("Sucesso na conexão!");

            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, cadastro.getName());
            preparedStatement.setString(2, cadastro.getCpf());
            preparedStatement.setString(3, cadastro.getEmail());
            preparedStatement.setString(4, cadastro.getSenha());
            preparedStatement.execute();

            System.out.println("Sucesso!");

            connection.close();

        } catch (Exception e) {
            System.out.println("Erro no cadastro: " + e.getMessage());
        }
    }
}
