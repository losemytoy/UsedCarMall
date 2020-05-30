import Dao.AdminDao;
import Dao.UserDao;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import entity.Admins;
import entity.Users;
import org.apache.struts2.interceptor.ServletResponseAware;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Map;

public class XXConnection extends ActionSupport implements ServletResponseAware {
    HttpServletRequest request;

    Admins adminsIn = new Admins();
    AdminDao adminDao = new AdminDao();
    private Admins admins;

    Users usersIn = new Users();
    UserDao userDao = new UserDao();
    private Users users;

    public Users getUsers() {
        return users;
    }

    public void setUsers(Users users) {
        this.users = users;
    }




    public Admins getAdmins() {
        return admins;
    }
    public void setAdmins(Admins admins) {
        this.admins = admins;
    }


    @Override
    public void setServletResponse(HttpServletResponse httpServletResponse) {

    }

    //管理员登陆验证
    public String adminlogin(){
        Admins adminsout = adminDao.checkAdmins(admins);
        if(adminsout!=null){
            ActionContext actionContext = ActionContext.getContext(); //取到struts容器
            Map session = actionContext.getSession(); //取得session
            session.put("adminId",admins.getAdminId()); //把用户数据放入session
            return "adminIndex";
        }else{
            return "error";
        }
    }

    //用户登陆验证
    public String userlogin(){
        Users usersout = userDao.checkUsers(users);
        if(usersout!=null){
            ActionContext actionContext = ActionContext.getContext();
            Map session = actionContext.getSession();
            session.put("userId",users.getUserNo());
            return "Home";
        }else{
            return "Error";
        }
    }


}
