
package webServiceAPI.client;

import javax.xml.bind.JAXBElement;
import javax.xml.bind.annotation.XmlElementDecl;
import javax.xml.bind.annotation.XmlRegistry;
import javax.xml.namespace.QName;


/**
 * This object contains factory methods for each 
 * Java content interface and Java element interface 
 * generated in the webserviceapi.service package. 
 * <p>An ObjectFactory allows you to programatically 
 * construct new instances of the Java representation 
 * for XML content. The Java representation of XML 
 * content can consist of schema derived interfaces 
 * and classes representing the binding of schema 
 * type definitions, element declarations and model 
 * groups.  Factory methods for each of these are 
 * provided in this class.
 * 
 */
@XmlRegistry
public class ObjectFactory {

    private final static QName _GetOnlineData_QNAME = new QName("http://service.webServiceAPI/", "getOnlineData");
    private final static QName _GetOnlineDataResponse_QNAME = new QName("http://service.webServiceAPI/", "getOnlineDataResponse");

    /**
     * Create a new ObjectFactory that can be used to create new instances of schema derived classes for package: webserviceapi.service
     * 
     */
    public ObjectFactory() {
    }

    /**
     * Create an instance of {@link GetOnlineData }
     * 
     */
    public GetOnlineData createGetOnlineData() {
        return new GetOnlineData();
    }

    /**
     * Create an instance of {@link GetOnlineDataResponse }
     * 
     */
    public GetOnlineDataResponse createGetOnlineDataResponse() {
        return new GetOnlineDataResponse();
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link GetOnlineData }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://service.webServiceAPI/", name = "getOnlineData")
    public JAXBElement<GetOnlineData> createGetOnlineData(GetOnlineData value) {
        return new JAXBElement<GetOnlineData>(_GetOnlineData_QNAME, GetOnlineData.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link GetOnlineDataResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://service.webServiceAPI/", name = "getOnlineDataResponse")
    public JAXBElement<GetOnlineDataResponse> createGetOnlineDataResponse(GetOnlineDataResponse value) {
        return new JAXBElement<GetOnlineDataResponse>(_GetOnlineDataResponse_QNAME, GetOnlineDataResponse.class, null, value);
    }

}
