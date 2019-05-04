package com.poc.crmbolt;

import java.io.IOException;
import java.util.Map;

import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.auth.AuthScope;
import org.apache.http.auth.UsernamePasswordCredentials;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.CredentialsProvider;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpPut;
import org.apache.http.entity.StringEntity;
import org.apache.http.impl.client.BasicCredentialsProvider;
import org.apache.http.impl.client.HttpClientBuilder;
import org.apache.http.message.BasicHeader;
import org.apache.http.protocol.HTTP;
import org.apache.http.util.EntityUtils;
import org.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.poc.model.Bolt;
import com.poc.model.CRM;

@Controller
public class HomeController {
	private static String baseUrl = "https://wslkcmp1ftr1-14.slksoft.com:9443/rest/bpm/wle/v1/process/30/variable/newAcct";
	private static String username = "admin";
	private static String password = "admin";

	String message = "Suvrat";

	@RequestMapping("/")
	public String welcome(Map<String, Object> model) {
		model.put("message", this.message);
		return "/home";
	}


	// Pass the processid and instanceid on both path this will be dynamically generated everytime you hit the below controller
	// pass the processid and instanceid from bpm tool eg:- http://localhost:9093/bolt/10/10
	@RequestMapping("/bolt/{processid}/{instanceid}/{legalname}/{raftname}/{email}")
	public String boltView(@PathVariable("processid") String processid,@PathVariable("instanceid") String instanceid, 
			@PathVariable("legalname") String legalname,@PathVariable("raftname") String raftname,@PathVariable("email") String email,ModelMap model) {
		model.addAttribute("processid", processid);
		model.addAttribute("instanceid", instanceid);
		model.addAttribute("legalname", legalname);
		model.addAttribute("raftname", raftname);
		model.addAttribute("email", email);		
		return "/Bolt";
	}

	
	// Use the processid and instanceid which are present as method arguments to make the rest call to bmp.
	// The processid and instanceid will be passed dynamically on submit button click from the above controller
	// If you change the processid and instanceid variable names do change in respective form action also
	@RequestMapping("/addCustomer/{processid}/{instanceid}/{legalname}/{raftname}/{email}")
	public String Bolt(@PathVariable("processid") String processid,@PathVariable("instanceid") 
	String instanceid ,@PathVariable("legalname") String legalname,@PathVariable("raftname") String raftname,@PathVariable("email") String email,@ModelAttribute("SpringWeb") Bolt bolt, ModelMap model) throws ClientProtocolException, IOException {
		model.addAttribute("legalname", legalname);
		model.addAttribute("raftname", raftname);
		model.addAttribute("addresstype", bolt.getAddresstype());
		model.addAttribute("aptSuite", bolt.getAptSuite());
		model.addAttribute("number", bolt.getNumber());
		model.addAttribute("city", bolt.getCity());
		model.addAttribute("state", bolt.getState());
		model.addAttribute("zipCode", bolt.getZipCode());
		model.addAttribute("phoneType", bolt.getPhoneType());
		model.addAttribute("phoneNumber", bolt.getPhoneNumber());
		model.addAttribute("businessphonenumber", bolt.getBusinessphonenumber());
		model.addAttribute("email", email);
		model.addAttribute("processid", processid);
		model.addAttribute("instanceid", instanceid);
		
		// Modify the below rest call to append processid and instanceid in url
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

		return "/BoltResult";
	}

	
	// Pass the processid and instanceid on both path this will be dynamically generated everytime you hit the below controller
	// pass the processid and instanceid from bpm tool eg:- http://localhost:9093/crm/10/10
	@RequestMapping("/crm/{processid}/{instanceid}/{legalname}/{dbaname}/{country}")
	public String crmView(@PathVariable("processid") String processid,@PathVariable("instanceid") String instanceid ,
			@PathVariable("legalname") String legalname,@PathVariable("dbaname") String dbaname,@PathVariable("country") String country, ModelMap model) {
		model.addAttribute("processid", processid);
		model.addAttribute("instanceid", instanceid);
		model.addAttribute("legalname", legalname);
		model.addAttribute("dbaname", dbaname);
		model.addAttribute("country", country);	
		return "/CRM";
	}
	
	

	// Use the processid and instanceid which are present as method arguments to make the rest call to bmp.
	// The processid and instanceid will be passed dynamically on submit button click from the above controller.
	// If you change the processid and instanceid variable names do change in respective for
	@RequestMapping("/addCrmCustomer/{processid}/{instanceid}/{legalname}/{dbaname}/{country}")
	public String controller4(@PathVariable("processid") String processid,@PathVariable("instanceid") 
	String instanceid,@PathVariable("legalname") String legalname,@PathVariable("dbaname") String dbaname,@PathVariable("country") String country 
	,@ModelAttribute("SpringWeb") CRM cRM,ModelMap model) throws ClientProtocolException, IOException {

		model.addAttribute("legalname", legalname);
		model.addAttribute("dbaname", dbaname);
		model.addAttribute("addressone", cRM.getAddressone());
		model.addAttribute("addresstwo", cRM.getAddresstwo());
		model.addAttribute("country", country);
		model.addAttribute("ein", cRM.getEin());
		model.addAttribute("accountproducttype", cRM.getAccountproducttype());
		model.addAttribute("Countryoflegalformation", cRM.getCountryoflegalformation());
		model.addAttribute("Countryofdomicile", cRM.getCountryofdomicile());
		model.addAttribute("gambling", cRM.getGambling());
		model.addAttribute("custemail", cRM.getCustemail());
		model.addAttribute("natureofBusiness", cRM.getNatureofBusiness());
		model.addAttribute("annualSales", cRM.getAnnualSales());
		model.addAttribute("ownerType", cRM.getOwnerType());
		model.addAttribute("beneficialOwner", cRM.getBeneficialOwner());
		model.addAttribute("customerPermit", cRM.getCustomerPermit());
		model.addAttribute("purposeofaccount", cRM.getPurposeofaccount());
		model.addAttribute("tranFrequency", cRM.getTranFrequency());
		model.addAttribute("captureType", cRM.getCaptureType());		
		model.addAttribute("processid", processid);
		model.addAttribute("instanceid", instanceid);

		// Modify the below rest call to append processid and instanceid in url
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
		
		return "/CRMResult";
	}
}
