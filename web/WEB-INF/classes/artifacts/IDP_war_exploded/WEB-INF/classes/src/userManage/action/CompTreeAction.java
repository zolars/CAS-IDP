package userManage.action;


import Util.ProvinceEnum;
import com.alibaba.fastjson.JSON;
import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.ServletActionContext;
import userManage.dao.UserDAO;
import userManage.dao.impl.UserDAOImpl;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

//import net.sf.json.JSON;
//import net.sf.json.JSONArray;


public class CompTreeAction extends ActionSupport {
    private static final long serialVersionUID = 13L;
    private String result;

    public String getResult() {
        return result;
    }

    public void setResult(String result) {
        this.result = result;
    }


    /* 根据用户名查询用户id，依据用户id找到用户可查看界面的权限、及用户可访问的行级结构树状串
     */
    public String execute() throws Exception { //getUserTree() throws Exception{
        try {//获取数据
            HttpServletRequest request = ServletActionContext.getRequest();
            HttpSession session = request.getSession();
            request.setCharacterEncoding("utf-8");

            String city = request.getParameter("cityid");

            //int cbid = ProvinceEnum.getNo(city);

            UserDAO dao = new UserDAOImpl();

            List computerroom = new ArrayList();

            computerroom = dao.getComputerroom(city);

            result = JSON.toJSONString(computerroom); // List转json

           /* JSONArray jsonArray = JSONArray.fromObject(citybank);
            result = jsonArray.toString();*/

            System.out.println(result);

            //存到 session 中,方便后续重复使用
            session.setAttribute("computerroom", computerroom);

        } catch (Exception e) {
            e.printStackTrace();
            return "error";
        }
        return "success";//ERROR;
    }

}
