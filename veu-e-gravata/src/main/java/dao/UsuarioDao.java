package dao;

import model.Usuario;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class UsuarioDao {
    public Usuario getUsuario(String email) {

        String SQL = "SELECT * FROM TB_USUARIO WHERE DS_EMAIL = ?";

        try{
            Connection connection = DriverManager.getConnection("jdbc:h2:~/test", "sa", "sa");

            PreparedStatement preparedStatement = connection.prepareStatement(SQL);

            preparedStatement.setString( 1, email);

            ResultSet resultSet = preparedStatement.executeQuery();

            System.out.println("Sucesso!");

            while (resultSet.next()){
                int id = resultSet.getInt("ID_USUARIO");
                String nome = resultSet.getString("DS_NOME");
                return new Usuario(id, nome);
            }

            connection.close();

            return null;
        } catch (Exception e){
            System.out.println("Error:" + e.getMessage());
            return null;
        }
    }
}
