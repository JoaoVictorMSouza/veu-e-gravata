package dao;

import model.Login;

import java.sql.ResultSet;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class LoginDao {

    public boolean verifyCredentials(Login login) {

        String SQL = "SELECT * FROM TB_USUARIO WHERE DS_EMAIL = ?";

        try{
            Connection connection = DriverManager.getConnection("jdbc:h2:~/test", "sa", "sa");

            PreparedStatement preparedStatement = connection.prepareStatement(SQL);

            preparedStatement.setString( 1, login.getDS_EMAIL());

            ResultSet resultSet = preparedStatement.executeQuery();

            System.out.println("Sucesso!");

            while (resultSet.next()){

               String DS_SENHA = resultSet.getString("DS_SENHA");

               if(DS_SENHA.equals(login.getDS_SENHA())){

                   return true;
                }
            }

            connection.close();

            return false;
        }catch (Exception e){

            System.out.println("Error:" + e.getMessage());
            return false;

        }
    }
}

