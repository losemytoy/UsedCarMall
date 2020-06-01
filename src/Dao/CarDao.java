package Dao;

import entity.Car;
import org.apache.struts2.ServletActionContext;

import javax.servlet.http.HttpSession;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


public class CarDao extends SQLBean {


    //车辆信息添加
    public int addCar(Car car){
        Connection connection = getConnection();
        PreparedStatement statement = null;
        ResultSet rs = null;
        int row = 0;

        try{
            statement = connection.prepareStatement("insert into CarTab(userNO,cartype,dispose,color,buyData,mileage,condition,price,img_url)values(?,?,?,?,?,?,?,?,?)");

            statement.setString(1,car.getUserno());
            statement.setString(2,car.getCartype());
            statement.setString(3,car.getDispose());
            statement.setString(4,car.getColor());
            statement.setString(5,car.getBuyData());
            statement.setString(6,car.getMileage());
            statement.setString(7,car.getCondition());
            statement.setString(8,car.getPrice());
            statement.setString(9,car.getImg_url());
            row = statement.executeUpdate();
        }catch (SQLException e){
            e.printStackTrace();
        }finally {
            closeConnection(connection,statement,rs);
        }
        return row;
    }

    //用户个人车辆信息
    public List<Car> getAllCarByUser(){
        Connection conn = getConnection();
        PreparedStatement stat = null;
        ResultSet rs=null;
        List<Car> carList = new ArrayList<>();
        HttpSession session = ServletActionContext.getRequest().getSession();
        String sessionId = (String) session.getAttribute("userId");

        String sql = "select carNo,cartype,dispose,color,buyData,mileage,condition,price from CarTab where userNO=?";

        try {
            stat = conn.prepareStatement(sql);
            stat.setString(1,sessionId);
            rs = stat.executeQuery();
            while (rs.next()){
                Car carOut = new Car();
                carOut.setCarNo(rs.getString("carNo"));
                carOut.setCartype(rs.getString("cartype"));
                carOut.setDispose(rs.getString("dispose"));
                carOut.setColor(rs.getString("color"));
                carOut.setBuyData(rs.getString("buyData"));
                carOut.setMileage(rs.getString("mileage"));
                carOut.setCondition(rs.getString("condition"));
                carOut.setPrice(rs.getString("price"));
                carList.add(carOut);
            }
        }catch (SQLException e){
            e.printStackTrace();
        }finally {
            closeConnection(conn,stat,rs);
        }
        return carList;
    }

    //车辆信息修改显示
    public Car showCar(Car car){
        Connection conn = getConnection();
        PreparedStatement stat = null;
        ResultSet rs=null;
        Car car1 = null;

        try {
            stat = conn.prepareStatement("select carNo,cartype,dispose,color,buyData,mileage,condition,price from CarTab where carNO=?");
            stat.setString(1,car.getCarNo());
            rs = stat.executeQuery();
            while (rs.next()){
                car1 = new Car();
                car1.setCarNo(rs.getString("carNo"));
                car1.setCartype(rs.getString("cartype"));
                car1.setDispose(rs.getString("dispose"));
                car1.setColor(rs.getString("color"));
                car1.setBuyData(rs.getString("buyData"));
                car1.setMileage(rs.getString("mileage"));
                car1.setCondition(rs.getString("condition"));
                car1.setPrice(rs.getString("price"));
            }
        }catch (SQLException e){
            e.printStackTrace();
        }finally {
            closeConnection(conn,stat,rs);
        }
        return car1;
    }

    //车辆信息修改更新
    public void updateCar(Car car){
        Connection connection = getConnection();
        PreparedStatement statement = null;

        try{
            statement = connection.prepareStatement("update CarTab set cartype=?,dispose=?,color=?,buyData=?,mileage=?,condition=?,price=? where carNo=?");

            statement.setString(1,car.getCartype());
            statement.setString(2,car.getDispose());
            statement.setString(3,car.getColor());
            statement.setString(4,car.getBuyData());
            statement.setString(5,car.getMileage());
            statement.setString(6,car.getCondition());
            statement.setString(7,car.getPrice());
            statement.setString(8,car.getCarNo());
            statement.executeUpdate();
        }catch (SQLException e){
            e.printStackTrace();
        }finally {
            closeConnection(connection,statement,null);
        }
    }

    //车辆信息删除
    public void deleteCar(String carNo) {
        Connection connection = getConnection();
        PreparedStatement stat = null;
        try{
            stat = connection.prepareStatement("DELETE FROM CarTab WHERE carNo=?");
            stat.setString(1,carNo);
            stat.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            closeConnection(connection,stat,null);
        }
    }


    //显示车辆
    public List<Car> getAllCar(){
        Connection conn = getConnection();
        PreparedStatement stat = null;
        ResultSet rs=null;
        List<Car> carList = new ArrayList<>();

        String sql = "select carNo,userNo,cartype,dispose,color,buyData,mileage,condition,price,img_url from CarTab ";

        try {
            stat = conn.prepareStatement(sql);
            rs = stat.executeQuery();
            while (rs.next()){
                Car cars = new Car();
                cars.setCarNo(rs.getString("carNo"));
                cars.setUserno(rs.getString("userNo"));
                cars.setCartype(rs.getString("cartype"));
                cars.setDispose(rs.getString("dispose"));
                cars.setColor(rs.getString("color"));
                cars.setBuyData(rs.getString("buyData"));
                cars.setMileage(rs.getString("mileage"));
                cars.setCondition(rs.getString("condition"));
                cars.setPrice(rs.getString("price"));
                cars.setImg_url(rs.getString("img_url"));
                carList.add(cars);
            }
        }catch (SQLException e){
            e.printStackTrace();
        }finally {
            closeConnection(conn,stat,rs);
        }
        return carList;
    }

    //显示车辆详情
    public Car showCarMes(Car car){
        Connection conn = getConnection();
        PreparedStatement stat = null;
        ResultSet rs=null;
        Car car1 = null;

        try {
            stat = conn.prepareStatement("select carNo,cartype,dispose,color,buyData,mileage,condition,price,img_url from CarTab where carNO=?");
            stat.setString(1,car.getCarNo());
            rs = stat.executeQuery();
            while (rs.next()){
                car1 = new Car();
                car1.setCarNo(rs.getString("carNo"));
                car1.setCartype(rs.getString("cartype"));
                car1.setDispose(rs.getString("dispose"));
                car1.setColor(rs.getString("color"));
                car1.setBuyData(rs.getString("buyData"));
                car1.setMileage(rs.getString("mileage"));
                car1.setCondition(rs.getString("condition"));
                car1.setPrice(rs.getString("price"));
                car1.setImg_url(rs.getString("img_url"));
            }
        }catch (SQLException e){
            e.printStackTrace();
        }finally {
            closeConnection(conn,stat,rs);
        }
        return car1;
    }
}
