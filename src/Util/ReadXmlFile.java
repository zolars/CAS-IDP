package Util;
import java.util.List;

import grabData.DataOnline;
import org.dom4j.Document;
import org.dom4j.DocumentException;
import org.dom4j.Element;
import org.dom4j.io.SAXReader;
public class ReadXmlFile {

        public static String[] paserXML(){
            String drive = "";
            String url = "";
            String username = "";
            String password = "";

            SAXReader reader = new SAXReader();
            try {
                // 读取XML文件
                Document doc = reader.read("../webapps/IDP/hibernate.cfg.xml");
                Element root = doc.getRootElement();

                List<Element> param = root.elements();
                for (Element element : param) {
                    List<Element> param1=element.elements();
                    for (Element element1 : param1) {
                        List<Element> param2=element.elements();
                        for (Element element2 : param2) {
                            if(element2.attributeValue("name").equals("connection.username")){
                                username = element2.getStringValue();
                            }
                            if(element2.attributeValue("name").equals("connection.password")){
                                password = element2.getStringValue();
                                break;
                            }

                        }

                    }

                }
            } catch (DocumentException e) {
                e.printStackTrace();
            }

            String[] userGroup = {username,password};
//            DataOnline.getMysql().put("mysql",userGroup);
            return userGroup;
        }
    }

