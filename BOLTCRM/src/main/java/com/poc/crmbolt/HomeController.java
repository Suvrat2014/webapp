package com.poc.crmbolt;

import java.io.IOException;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
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
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.poc.model.Bolt;
import com.poc.model.CRM;

@Controller
public class HomeController {
	private static String baseUrl = " https://wslkcmp1ftr1-14.slksoft.com:9443/rest/bpm/wle/v1/process/30/variable/newAcct";
	private static String username = "admin";
	private static String password = "admin";

	String message = "Suvrat";

	String controllermessage = "hey this is controller 2";

	@RequestMapping("/")
	public String welcome(Map<String, Object> model) {
		model.put("message", this.message);
		return "/home";
	}

	@RequestMapping("/testcontroller")
	public String controller2(Map<String, Object> model) {
		model.put("message", this.controllermessage);
		return "/Bolt";
	}

	@RequestMapping(value = "/student", method = RequestMethod.GET)
	public ModelAndView student() {
		return new ModelAndView("student", "command", new Student());
	}

	@RequestMapping(value = "/addStudent", method = RequestMethod.POST)
	public String addStudent(@ModelAttribute("SpringWeb") Student student, ModelMap model) {
		model.addAttribute("name", student.getName());
		model.addAttribute("age", student.getAge());
		model.addAttribute("id", student.getId());

		return "/result";
	}

	@RequestMapping(value = "/bolt", method = RequestMethod.GET)
	public ModelAndView bolt() {
		return new ModelAndView("Bolt", "command", new Bolt());
	}

	@RequestMapping(value = "/bolt/{processId}/{instanceId}", method = RequestMethod.GET)
	public ModelAndView boltwithid(@PathVariable("processId") Integer processId,
			@PathVariable("instanceId") Integer instanceId) {
		Bolt bolt = new Bolt();
		bolt.setProcessId(processId);
		bolt.setInstanceId(instanceId);
		return new ModelAndView("Bolt", "command", bolt);
	}

	@RequestMapping("/addCustomer")
	public String Bolt(@ModelAttribute("SpringWeb") Bolt bolt, ModelMap model) {
		model.addAttribute("lname", bolt.getLname());
		model.addAttribute("rname", bolt.getRname());
		model.addAttribute("addresstype", bolt.getAddresstype());
		model.addAttribute("aptSuite", bolt.getAptSuite());
		model.addAttribute("number", bolt.getNumber());
		model.addAttribute("city", bolt.getCity());
		model.addAttribute("state", bolt.getState());
		model.addAttribute("zipCode", bolt.getZipCode());
		model.addAttribute("phoneType", bolt.getPhoneType());
		model.addAttribute("phoneNumber", bolt.getPhoneNumber());
		model.addAttribute("businessphonenumber", bolt.getBusinessphonenumber());
		model.addAttribute("email", bolt.getEmail());
		model.addAttribute("processId", bolt.getProcessId());
		model.addAttribute("instanceId", bolt.getInstanceId());

		Gson gson = new Gson();

		String jsonInString = gson.toJson(bolt);

		System.out.println(jsonInString);

		return "/BoltResult";
	}

	@RequestMapping("/crm")
	public String controller3(Map<String, Object> model) {
		model.put("message", this.controllermessage);
		return "/CRM";
	}

	@RequestMapping("/addCrmCustomer")
	public String CRM(@ModelAttribute("SpringWeb") CRM cRM, ModelMap model) throws ClientProtocolException, IOException, URISyntaxException {
		model.addAttribute("lname", cRM.getLname());
		model.addAttribute("dbaname", cRM.getDbaname());
		model.addAttribute("addressone", cRM.getAddressone());
		model.addAttribute("addresstwo", cRM.getAddresstwo());
		model.addAttribute("addresscountry", cRM.getAddresscountry());
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

		Gson gson = new Gson();

		String jsonInString = gson.toJson(cRM);

		System.out.println(jsonInString);
		
		URI uri = new URI(
			    "https", 
			    "https://wslkcmp1ftr1-14.slksoft.com:9443", 
			    "/rest/bpm/wle/v1/process/30/variable/newAcct",
			    null);
			URL url = uri.toURL();

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
