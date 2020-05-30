package Dao;

import entity.Admins;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class AdminDao extends SQLBean {

    //管理员登陆验证
    public Admins checkAdmins(Admins admins){
        Connection connection = getConnection();
        PreparedStatement statement = null;
        ResultSet rs = null;
        Admins admins1 = null;

        try{
            String sql = "select adminId,adminPwd from AdminTab where adminId=? and adminPwd=?";
            statement = connection.prepareStatement(sql);
            statement.setString(1,admins.getAdminId());
            statement.setString(2,admins.getAdminPwd());
            rs = statement.executeQuery();
            while (rs.next()){
                admins1 = new Admins();
                admins1.setAdminId(rs.getString("adminId"));
                admins1.setAdminPwd(rs.getString("adminPwd"));
            }
        }catch (SQLException e){
            e.printStackTrace();
        }finally {
            closeConnection(connection,statement,rs);
        }
        return admins1;
    }

}
