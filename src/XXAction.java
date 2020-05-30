
import Dao.CarDao;
import Dao.UserDao;
import com.opensymphony.xwork2.ActionSupport;
import entity.Car;
import entity.Users;
import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.ServletRequestAware;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;


public class XXAction extends ActionSupport implements ServletRequestAware {
    HttpServletRequest request;
    @Override
    public void setServletRequest(HttpServletRequest httpServletRequest) {
        this.request = httpServletRequest;

}

    Users userIn=new Users();
    UserDao userDao = new UserDao();
    private Users users;


    Car carIn = new Car();
    CarDao carDao = new CarDao();
    private  Car car;

    private File myFile;
    private String myFileContentType;
    private String myFileFileName;
    private String bestPath ="D:\\软件工程\\期末作业\\Database_img" ;
    private String path;


    public Users getUsers() {
        return users;
    }
    public void setUsers(Users users) { this.users = users; }


    public String userreg(){
        String userNo =  request.getParameter("userNo");
        String userName = request.getParameter("userName");
        String userPwd = request.getParameter("userPwd");
        String userTel = request.getParameter("userTel");
        userIn.setUserNo(userNo);
        userIn.setUserName(userName);
        userIn.setUserPwd(userPwd);
        userIn.setUserTel(userTel);
        int row = userDao.regUsers(userIn);
        if (row > 0)
            return "index";
        return "Home";
    }


    public String listUser() {
        List<Users> usersList = new ArrayList<>();
        usersList = userDao.getALLusers();
        request.getSession().setAttribute("user",usersList);
        if (usersList.size() != 0){
            request.setAttribute("listUser",usersList);
            return "listUser";
        }
        return "error";
    }
    public String addUsers(){
        String userNo =  request.getParameter("userNo");
        String userName = request.getParameter("userName");
        String userPwd = request.getParameter("userPwd");
        String userTel = request.getParameter("userTel");
        userIn.setUserNo(userNo);
        userIn.setUserName(userName);
        userIn.setUserPwd(userPwd);
        userIn.setUserTel(userTel);
        int row = userDao.insertUsers(userIn);
        if (row > 0)
            return "UsersMes";
        return "error";
    }
    public String gotoupdataUsers(){
        String userNo = request.getParameter("userNo");
        Users users = new Users();
        users.setUserNo(userNo);
        Users usersUpdata = userDao.getusers(users);
        if (usersUpdata != null){
            request.setAttribute("updataUsers",usersUpdata);
            return "updataUsers";
        }else {
            return "error";
        }
    }

    public String updataUsers(){
        String userName = request.getParameter("userName");
        String userPwd = request.getParameter("userPwd");
        String userTel = request.getParameter("userTel");
        String userNo = request.getParameter("userNo");
        userIn.setUserName(userName);
        userIn.setUserPwd(userPwd);
        userIn.setUserTel(userTel);
        userIn.setUserNo(userNo);
        userDao.updataUsers(userIn);
        return "UsersMes";
    }
    public String deleteUsers(){
        String userNo = request.getParameter("userNo");
        userDao.deleteUsers(userNo);
        return "UsersMes";
    }
    public String searchUsers() {

        List<Users> usersList = userDao.getAllUsersByName(users);
        if (usersList.size() > 0){
            request.setAttribute("listUser",usersList);
            return "listUser";
        }

        return "error";
    }


    public File getMyFile() {
        return myFile;
    }

    public void setMyFile(File myFile) {
        this.myFile = myFile;
    }

    public String getMyFileContentType() {
        return myFileContentType;
    }

    public void setMyFileContentType(String myFileContentType) {
        this.myFileContentType = myFileContentType;
    }

    public String getMyFileFileName() {
        return myFileFileName;
    }

    public void setMyFileFileName(String myFileFileName) {
        this.myFileFileName = myFileFileName;
    }

    public Car getCar() {
        return car;
    }

    public void setCar(Car car) {
        this.car = car;
    }

    public String execute()
    {
        bestPath = "D:\\软件工程\\期末作业\\Database_img";
        try{
            System.out.println("Src File name: " + myFile);
            System.out.println("Dst File name: " + myFileFileName);
            File bestFile  = new File(bestPath, myFileFileName);
            FileUtils.copyFile(myFile, bestFile);

        }catch(IOException e){
            e.printStackTrace();
            return ERROR;
        }
        return SUCCESS;

    }

    public String addCar() throws IOException {
        String carno = request.getParameter("carNo");
        String cartype = request.getParameter("type");
        String dispose = request.getParameter("dispose");
        String color = request.getParameter("color");
        String buyData = request.getParameter("buyData");
        String mileage = request.getParameter("mileage");
        String condition = request.getParameter("condition");
        String price = request.getParameter("price");
        HttpSession session = ServletActionContext.getRequest().getSession();
        String sessionId = (String) session.getAttribute("userId");

        File bestFile  = new File(bestPath, myFileFileName);
        FileUtils.copyFile(myFile, bestFile);
        String path = bestPath+"\\"+myFileFileName;
        String imgUrl = path;

        carIn.setCarNo(carno);
        carIn.setCartype(cartype);
        carIn.setDispose(dispose);
        carIn.setColor(color);
        carIn.setBuyData(buyData);
        carIn.setMileage(mileage);
        carIn.setCondition(condition);
        carIn.setPrice(price);
        carIn.setImg_url(imgUrl);
        carIn.setUserno(sessionId);

        int row = carDao.addCar(carIn);
        if (row>0)
            return "success";
        return "error";
    }

    public String modCar(){
        String carNo = request.getParameter("carNo");
        Car car = new Car();
        car.setCarNo(carNo);
        Car modifCar = carDao.showCar(car);
        if(modifCar != null){
            request.setAttribute("modCar",modifCar);
            return "modCar";
        }else {
            return "Error";
        }
    }

    public String updateCar(){
        String carno = request.getParameter("carNo");
        String cartype = request.getParameter("type");
        String dispose = request.getParameter("dispose");
        String color = request.getParameter("color");
        String buyData = request.getParameter("buyData");
        String mileage = request.getParameter("mileage");
        String condition = request.getParameter("condition");
        String price = request.getParameter("price");

        carIn.setCarNo(carno);
        carIn.setCartype(cartype);
        carIn.setDispose(dispose);
        carIn.setColor(color);
        carIn.setBuyData(buyData);
        carIn.setMileage(mileage);
        carIn.setCondition(condition);
        carIn.setPrice(price);
        carDao.updateCar(carIn);
        return "addCarHistory";
    }

    public String deleteCar(){
        String carNo = request.getParameter("carNo");
        carDao.deleteCar(carNo);
        return "addCarHistory";
    }

}
