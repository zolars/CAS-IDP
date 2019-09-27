package webServiceAPI.service;

import javax.jws.WebMethod;
import javax.jws.WebService;

@WebService
public interface getDataInterface {
     @WebMethod
     public String getOnlineData(String aka, String cid);
}
