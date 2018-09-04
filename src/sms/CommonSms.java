package sms;

/**
 * 短信实体类
 *
 */
public class CommonSms{

    //内容
    private String smstext;
    //发送者
    private String sender;
    //接收者
    private String recver;
    //状态
    private String state;

    public String getSmstext() {
        return smstext;
    }
    public void setSmstext(String smstext) {
        this.smstext = smstext;
    }
    public String getSender() {
        return sender;
    }
    public void setSender(String sender) {
        this.sender = sender;
    }
    public String getRecver() {
        return recver;
    }
    public void setRecver(String recver) {
        this.recver = recver;
    }
    public String getState() {
        return state;
    }
    public void setState(String state) {
        this.state = state;
    }



}
