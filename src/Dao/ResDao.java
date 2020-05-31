package Dao;

import entity.Reservation;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class ResDao extends SQLBean{

    //预约信息添加
    public int addResMes(Reservation res){
        Connection connection = getConnection();
        PreparedStatement statement = null;
        ResultSet rs = null;
        int row = 0;
        try{
            statement = connection.prepareStatement("insert into Restab(userNo,bookDate) values (?,?)");

            statement.setString(1,res.getUserNo());
            statement.setString(2,res.getBookDate());
            row = statement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            closeConnection(connection,statement,rs);
        }
        return row;
    }
}
