package dao;

import model.Casal;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Date;

public class CasalDao {

    public Casal getCasalByCdCasal(String cdCasal) {

        String sql = "SELECT * FROM TB_CASAL WHERE CD_CASAL = ?";

        try{
            Connection connection = DriverManager.getConnection("jdbc:h2:~/test", "sa", "sa");

            PreparedStatement preparedStatement = connection.prepareStatement(sql);

            preparedStatement.setString( 1, cdCasal.toUpperCase());

            ResultSet resultSet = preparedStatement.executeQuery();

            while (resultSet.next()){
                int id = resultSet.getInt("ID_CASAL");
                String codigoCasal = resultSet.getString("CD_CASAL");
                Date previsaoCasamento = resultSet.getDate("DH_PREVISAO_CASAMENTO");
                String hxFotoCasal = resultSet.getString("HX_FOTO_CASAL");
                String dsFotoCasal = resultSet.getString("DS_FOTO_CASAL");

                Casal casal = new Casal(id, codigoCasal, hxFotoCasal, dsFotoCasal);

                return casal;
            }

            return null;
        } catch (Exception e){
            System.out.println("Error:" + e.getMessage());
            return null;
        }
    }

    public Casal getCasalByIdCasal(int idCasal) {
        String sql = "SELECT * FROM TB_CASAL WHERE ID_CASAL = ?";

        try{
            Connection connection = DriverManager.getConnection("jdbc:h2:~/test", "sa", "sa");

            PreparedStatement preparedStatement = connection.prepareStatement(sql);

            preparedStatement.setInt( 1, idCasal);

            ResultSet resultSet = preparedStatement.executeQuery();

            while (resultSet.next()){
                int id = resultSet.getInt("ID_CASAL");
                String codigoCasal = resultSet.getString("CD_CASAL");
                Date previsaoCasamento = resultSet.getDate("DH_PREVISAO_CASAMENTO");
                String hxFotoCasal = resultSet.getString("HX_FOTO_CASAL");
                String dsFotoCasal = resultSet.getString("DS_FOTO_CASAL");

                Casal casal = new Casal(id, codigoCasal, hxFotoCasal, dsFotoCasal);

                return casal;
            }

            return null;
        } catch (Exception e){
            System.out.println("Error:" + e.getMessage());
            return null;
        }
    }
}
