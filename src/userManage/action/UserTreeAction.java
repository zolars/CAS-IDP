package userManage.action;


import com.opensymphony.xwork2.ActionSupport;
//import hibernatePOJO.UserPermission;
//import net.sf.json.JSON;
//import net.sf.json.JSONObject;


public class UserTreeAction extends ActionSupport {
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
           /* HttpServletRequest request = ServletActionContext.getRequest();
            HttpSession session = request.getSession();
            request.setCharacterEncoding("utf-8");

            String userid = (String) session.getAttribute("userid");
            String province = request.getParameter("provinceid");

            int pbid = ProvinceEnum.getNo(province);

            User user = new User();
            user.setUid(userid);

            UserDAO dao = new UserDAOImpl();

            //json:{"200":{"石家庄分行":["3号机房"]}}

            //List<List<List>> usrtree = dao.getUserTree(user, pbid);
            String probank = dao.getProBank(pbid);
            List<String> citybank = dao.getCityBank(user, pbid);
            List<List<String>> computerroom = new ArrayList<>();
            for(int i = 0 ; i < citybank.size(); i++){
                System.out.println(citybank.get(i));
                String str = citybank.get(i);
                List<String> crroom = dao.getComputerroom(str, pbid);
                computerroom.add(crroom);
            }
            //for....end

            JSONObject jsonObject = new JSONObject();
            jsonObject.put("probank", probank);
            jsonObject.put("citybank", citybank);
            jsonObject.put("computerroom", computerroom);

            result = JSON.toJSONString(jsonObject);
            System.out.println(result);

            //存到 session 中,方便后续重复使用
            session.setAttribute("probank", probank);
            session.setAttribute("citybank", citybank);
            session.setAttribute("computerroom", computerroom);*/

        } catch (Exception e) {
            e.printStackTrace();
            return "error";
        }
        return "success";//ERROR;
    }

}
