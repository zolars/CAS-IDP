package Util;


import org.hibernate.HibernateException;
import org.hibernate.cfg.Environment;
import java.util.Map;
import org.hibernate.HibernateException;
import org.hibernate.c3p0.internal.C3P0ConnectionProvider;
import org.hibernate.cfg.Environment;

public class NewConnectionProvider extends C3P0ConnectionProvider {

    public NewConnectionProvider() {
        super();
    }

    /*
     * (non-Javadoc)
     *
     * @see org.hibernate.connection.DriverManagerConnectionProvider#configure(java.util.Properties)
     */
    @Override
    public void configure(Map props) throws HibernateException {
        String user = (String) props.get(Environment.USER);
        String password = (String) props.get(Environment.PASS);
        if (user == null) {
            throw new HibernateException("数据库帐号不能为空！");
        }
        if (password == null) {
            throw new HibernateException("数据库密码不能为空！");
        }
        //解密
//        AESUtils aes = new AESUtils();
//        props.put(Environment.USER, aes.decode(user));
//        props.put(Environment.PASS, aes.decode(password));
        props.put(Environment.USER, "root");
        props.put(Environment.PASS, "root");
        super.configure(props);
    }
}
