package Dao;

import entity.Admins;
import entity.Users;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class UserDao extends SQLBean{

    //用户登陆验证
    public Users checkUsers(Users users){
        Connection connection = getConnection();
        PreparedStatement statement = null;
        ResultSet rs = null;
        Users users1 = null;

        try{
            String sql = "select userNo,userPwd from UserTab where userNo=? and userPwd=?";
            statement = connection.prepareStatement(sql);
            statement.setString(1,users.getUserNo());
            statement.setString(2,users.getUserPwd());
            rs = statement.executeQuery();

            while (rs.next()){
                users1 = new Users();
                users1.setUserNo(rs.getString("userNo"));
                users1.setUserPwd(rs.getString("userPwd"));
            }
        }catch (SQLException e){
            e.printStackTrace();
        }finally {
            closeConnection(connection,statement,rs);
        }
        return users1;
    }

    //用户注册
    public int regUsers(Users users){
        Connection connection = getConnection();
        PreparedStatement statement = null;
        ResultSet rs = null;
        int row = 0;

        try{
            statement = connection.prepareStatement("insert into UserTab(userNo,userName,userPwd,userTel)values(?,?,?,?)");
            statement.setString(1,users.getUserNo());
            statement.setString(2,users.getUserName());
            statement.setString(3,users.getUserPwd());
            statement.setString(4,users.getUserTel());
            row = statement.executeUpdate();
        }catch (SQLException e){
            e.printStackTrace();
        }finally {
            closeConnection(connection,statement,rs);
        }
        return row;
    }
    public Users getusers(Users users){
        Connection conn = getConnection();
        PreparedStatement stat = null;
        ResultSet rs = null;
        Users ad = null;

        try {
            String sql = "select userNo,userName,userPwd,userTel from UserTab where userNo=?";
            stat = conn.prepareStatement(sql);
            stat.setString(1,users.getUserNo());
            rs = stat.executeQuery();
            while(rs.next()){
                ad = new Users();
                ad.setUserNo(rs.getString("userNo"));
                ad.setUserName(rs.getString("userName"));
                ad.setUserPwd(rs.getString("userPwd"));
                ad.setUserTel(rs.getString("userTel"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            closeConnection(conn,stat,null);
        }
        return ad;
    }
    public List<Users> getALLusers() {
        Connection conn = getConnection();
        PreparedStatement stat = null;
        ResultSet rs=null;
        List<Users> usersList = new ArrayList<>();
        Users ad = null;

        try {
            String sql = "select userNo,userName,userPwd,userTel from UserTab";
            stat = conn.prepareStatement(sql);
            rs = stat.executeQuery();
            while (rs.next()) {
                ad = new Users();
                ad.setUserNo(rs.getString("userNo"));
                ad.setUserName(rs.getString("userName"));
                ad.setUserPwd(rs.getString("userPwd"));
                ad.setUserTel(rs.getString("userTel"));
                usersList.add(ad);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            closeConnection(conn, stat, null);
        }
        return usersList;
    }
    public int insertUsers(Users users){
        Connection coun = getConnection();
        PreparedStatement stat = null;
        Users ad = null;
        int row = 0;

        try {
            String sql = "INSERT INTO UserTab(userNo,userName,userPwd,userTel) VALUES(?,?,?,?)";
            stat = coun.prepareStatement(sql);
            stat.setString(1, users.getUserNo());
            stat.setString(2, users.getUserName());
            stat.setString(3, users.getUserPwd());
            stat.setString(4, users.getUserTel());
            row = stat.executeUpdate();
        }catch (SQLException e){
            e.printStackTrace();
        }finally {
            closeConnection(coun,stat,null);
        }
        return row;
    }
    public void deleteUsers(String userNo) {
        Connection connection = getConnection();
        PreparedStatement stat = null;
        try{
            stat = connection.prepareStatement("DELETE FROM UserTab WHERE userNo=?");
            stat.setString(1,userNo);
            stat.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            closeConnection(connection,stat,null);
        }
    }
    public void updataUsers(Users users){
        Connection coun = getConnection();
        PreparedStatement ps = null;

        try {
            ps = coun.prepareStatement("UPDATE UserTab SET userName=?,userPwd=?,userTel=? WHERE userNo=?");
            ps.setString(1, users.getUserName());
            ps.setString(2, users.getUserPwd());
            ps.setString(3, users.getUserTel());
            ps.setString(4, users.getUserNo());
            ps.executeUpdate();
        }catch (SQLException e){
            e.printStackTrace();
        }finally {
            closeConnection(coun,ps,null);
        }
    }
    public List<Users> getAllUsersByName(Users users){
        Connection conn = getConnection();
        PreparedStatement stat = null;
        ResultSet rs=null;
        List<Users> usersList = new ArrayList<>();

        String sql = "select userNo,userName,userPwd,userTel from UserTab where userNo=?";

        try {
            stat = conn.prepareStatement(sql);
            stat.setString(1,users.getUserNo());
            rs = stat.executeQuery();
            while (rs.next()){
                Users usersOut = new Users();
                usersOut.setUserNo(rs.getString("userNo"));
                usersOut.setUserName(rs.getString("userName"));
                usersOut.setUserPwd(rs.getString("userPwd"));
                usersOut.setUserTel(rs.getString("userTel"));
                usersList.add(usersOut);
            }
        }catch (SQLException e){
            e.printStackTrace();
        }finally {
            closeConnection(conn,stat,rs);
        }
        return usersList;
    }

}
