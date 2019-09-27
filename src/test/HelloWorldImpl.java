package test;

import javax.jws.WebMethod;

import javax.jws.WebService;



/**

  * Created by Lin_Yang on 2014/12/16.

  */

@WebService

public class HelloWorldImpl  {

@WebMethod


public String sayHello(String name) {

        String str="欢迎你："+name;

        System.out.println(str);

        return str;

        }

        }

