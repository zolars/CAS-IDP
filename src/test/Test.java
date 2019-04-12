package test;

import javax.xml.ws.Endpoint;

public class Test {

    public static void main(String[] args) {
        JobService jobService = new JobServiceImpl();
        String address = "http://localhost:8080/test/jobservice";
        Endpoint.publish(address, jobService);
        System.out.println("wsdl地址:" + address + "?WSDL");

    }

}
