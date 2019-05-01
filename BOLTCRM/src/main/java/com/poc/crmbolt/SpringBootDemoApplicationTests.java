package com.poc.crmbolt;
 
import java.net.URI;
import java.net.URISyntaxException;

import org.apache.http.auth.AuthScope;
import org.apache.http.auth.UsernamePasswordCredentials;
import org.apache.http.client.CredentialsProvider;
import org.apache.http.client.HttpClient;
import org.apache.http.impl.client.BasicCredentialsProvider;
import org.apache.http.impl.client.HttpClientBuilder;
import org.springframework.boot.context.embedded.LocalServerPort;
import org.springframework.http.ResponseEntity;
import org.springframework.http.client.HttpComponentsClientHttpRequestFactory;
import org.springframework.web.client.RestTemplate;
 

public class SpringBootDemoApplicationTests
{  
    @LocalServerPort
    int randomServerPort;
     
    //Timeout value in milliseconds
    int timeout = 10_000;
     
    public RestTemplate restTemplate;
     
 
    public void setUp()
    {
        restTemplate = new RestTemplate(getClientHttpRequestFactory());
    }
     
    private HttpComponentsClientHttpRequestFactory getClientHttpRequestFactory()
    {
        HttpComponentsClientHttpRequestFactory clientHttpRequestFactory
                          = new HttpComponentsClientHttpRequestFactory();
         
        clientHttpRequestFactory.setHttpClient(httpClient());
              
        return clientHttpRequestFactory;
    }
     
    private HttpClient httpClient()
    {
        CredentialsProvider credentialsProvider = new BasicCredentialsProvider();
 
        credentialsProvider.setCredentials(AuthScope.ANY,
                        new UsernamePasswordCredentials("admin", "admin"));
 
        HttpClient client = HttpClientBuilder
                                .create()
                                .setDefaultCredentialsProvider(credentialsProvider)
                                .build();
        return client;
    }
     
    
    public void testGetEmployeeList_success() throws URISyntaxException
    {
        final String baseUrl = "http://localhost:"+randomServerPort+"/employees/";
        URI uri = new URI(baseUrl);
 
        ResponseEntity<String> result = restTemplate.getForEntity(uri, String.class);
         
        //Verify request succeed
   //     Assert.assertEquals(200, result.getStatusCodeValue());
     //   Assert.assertEquals(true, result.getBody().contains("employeeList"));
    }
}