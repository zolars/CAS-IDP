package smsplantform;

import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.ServletActionContext;

import javax.servlet.http.HttpServletRequest;
import java.io.*;
import java.net.Socket;


public class webservice extends ActionSupport {
    private static final long serialVersionUID = 13L;
    private String result;

    public String getResult() {
        return result;
    }

    public void setResult(String result) {
        this.result = result;
    }

    public String execute() throws Exception {
        try {

            // socket建立
            Socket socket = new Socket("36.0.21.10", 9774);
            PrintWriter writer = new PrintWriter(new OutputStreamWriter(socket.getOutputStream(), "GBK"));
            BufferedReader in = new BufferedReader(new InputStreamReader(socket.getInputStream(), "GBK"));

            //String dataToSend = "ECMP_DCP|1002|XXXXAP4530##192.168.1.1##1258359994000##5##OPEN##UPS##ups1##inputVoltage##ups1的输入电压异常，当前值99##Ext1##Ext2##Ext3\n";
            //  String dataToSend =    "ECMP_DCP|1002|spcnapp021210##10.100.62.184##1516847200##5##OPEN##DTJDBC##esb##JDBCCurrConnCnt## JDBC Connection Pool Active Connections Current Count.Was 1.00num but should be lower than 1.00num. ##Ext1##Ext2##Ext3\n";

            HttpServletRequest request = ServletActionContext.getRequest();
            request.setCharacterEncoding("utf-8");
            String dname = request.getParameter("dname");
            String ip = request.getParameter("ip");
            String time = request.getParameter("time");
            String level = request.getParameter("level");
            String status = request.getParameter("status");
            String did = request.getParameter("did");
            String diname = request.getParameter("diname");
            String typename = request.getParameter("typename");
            String content = request.getParameter("content");
            String ext1 = request.getParameter("ext1");
            String ext2 = request.getParameter("ext2");
            String ext3 = request.getParameter("ext3");

            String dataToSend = "ECMP_DCP|1002" + "|" + dname + "##" + ip + "##" + time + "##" + level + "##" + status + "##" + did + "##" + diname + "##" + typename + "##" + content + "##" + ext1 + "##" + ext2 + "##" + ext3 + "\n";
            writer.print(dataToSend);
            writer.flush();
            result = in.readLine();
            writer.close();
            in.close();
            socket.close();

        } catch (IOException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
            return "error";
        }
        return "success";
    }

}
