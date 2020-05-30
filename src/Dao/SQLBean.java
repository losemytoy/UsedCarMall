package Dao;

import java.sql.*;

public class SQLBean {
    private static final String DRIVER_CLASS="com.microsoft.sqlserver.jdbc.SQLServerDriver";

    private static final String DATABASE_URL="jdbc:sqlserver://localhost:1433;DatabaseName=UsedCar_Database";

    private static final String DATABASE_USER="sa";

    private static final String DATA_PASSWORD="123456";

    public Connection getConnection(){
        Connection conn=null;
        try{
            Class.forName(DRIVER_CLASS);
            conn = DriverManager.getConnection(DATABASE_URL, DATABASE_USER,DATA_PASSWORD);
        }catch (Exception e){
            e.printStackTrace();
        }
        return conn;
    }
    public  void closeConnection(Connection conn, PreparedStatement pstmt, ResultSet rs){

        try {
            if (conn!=null){conn.close();}
            if (pstmt!=null){pstmt.close();}
            if (rs!=null){rs.close();}
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
        }
    }


}
