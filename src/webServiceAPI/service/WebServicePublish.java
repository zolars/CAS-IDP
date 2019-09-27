package webServiceAPI.service;

import javax.xml.ws.Endpoint;

public class WebServicePublish {

    public static void main(String[] args){
        String url = "http://192.168.1.253:8084/ws/onlinedatainterface";

        Endpoint.publish(url, new getDataImpl());

        System.out.println("success!!!!!");

    }
}
