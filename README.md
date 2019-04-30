# webapp
[![HitCount](http://hits.dwyl.io/suvrat2014@gmailcom/suvrat2014/webapp.svg)](http://hits.dwyl.io/suvrat2014@gmailcom/suvrat2014/webapp)

## Simple Spring Boot Application

Simple Spring Boot Application with Jsp page and Rest Controllers to Collect Form Data.




package com.poc.soap.bean;
package com.slk.bpmpoc.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.auth.AuthScope;
import org.apache.http.auth.UsernamePasswordCredentials;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.CredentialsProvider;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpPut;
import org.apache.http.entity.ContentType;
import org.apache.http.entity.StringEntity;
import org.apache.http.impl.client.BasicCredentialsProvider;
import org.apache.http.impl.client.HttpClientBuilder;
import org.apache.http.message.BasicHeader;
import org.apache.http.protocol.HTTP;
import org.apache.http.util.EntityUtils;
import org.json.simple.JSONObject;

public class Test {
       private static String baseUrl = " https://wslkcmp1ftr1-14.slksoft.com:9443/rest/bpm/wle/v1/process/30/variable/newAcct";
       private static String username = "admin";
       private static String password = "admin";

       public static void main(String[] args) throws ClientProtocolException, IOException {

              CredentialsProvider provider = new BasicCredentialsProvider();
              UsernamePasswordCredentials credentials = new UsernamePasswordCredentials(username, password);
              provider.setCredentials(AuthScope.ANY, credentials);
              HttpClient client = HttpClientBuilder.create().setDefaultCredentialsProvider(provider).build();
              HttpPut httpput = new HttpPut(baseUrl);
              
              JSONObject jsonObj = new JSONObject();
              jsonObj.put("status", "success");
              StringEntity se = new StringEntity(jsonObj.toString());
              se.setContentEncoding(new BasicHeader(HTTP.CONTENT_TYPE, "application/json"));
              httpput.setEntity(se);
       
              
              HttpResponse response = client.execute(httpput);
              HttpEntity entity = response.getEntity();
              String responseString = "No response";
              if (entity != null) {
                     responseString = EntityUtils.toString(entity);
              }

              System.out.println("response is: " + responseString);
              
              

