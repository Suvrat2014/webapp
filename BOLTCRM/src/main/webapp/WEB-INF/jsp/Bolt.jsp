<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>BOLT</title>
</head>
<body>

<div style="height:950px;width:100%;background:linear-gradient(to bottom, #000080 0%, #8080ff 100%)">
  <div  style="background-color:#000066;height:50px;margin:0px" >
      <div  style="float:left;margin-top:15px;margin-bottom:10px;width:75%;margin-left:10%" >
          <label style="font-family:verdana;color:white;font-size:20"><b>Commercial Customer Onboarding System</b></label>
      </div>
  </div>
  <div  style="min-height:900px;float:left;min-width:10%" ></div>
  <div  style="float:left;height:50px" >
      <div  style="float:left;margin-top:15px;margin-bottom:15px;width:100%;" >
          <label style="font-family:verdana;color:white;font-size:20"><b>The Timeless Marketing Corporation</b></label>
      </div>
  </div>
  <div  style="background-color:white; height:750px;float:left;width:80%" >
  	<div  style="min-height:750px;float:left;min-width:5%" ></div>
      <form:form method = "POST" action = "/addCustomer">   
      <div  style="min-height:100%;float:left;min-width:5%" ></div>
      <div  style="float:left;margin-top:30px;margin-bottom:10px;width:75%" >
          <label style="font-family:verdana"><b>Business Name</b></label>
      </div>

      <div  style="float:left;margin-top:10px;margin-bottom:10px;width:95%;font-size:14" >
          <label style="font-family:verdana">Full Legal Name<span style="color:red">*</span></label>
      </div>
      <div  style="float:left;margin-top:10px;margin-bottom:10px;width:95%;font-size:14" >
          <input name=lname id="legalName" style="width:75%;border:1px solid black;border-top:0px;border-left:0px;border-right:0px;" placeholder="The Timeless Marketing Corporation" required></input>
      </div>

      <div  style="float:left;margin-top:10px;margin-bottom:10px;width:95%;font-size:14" >
          <label style="font-family:verdana">RAFT Name<span style="color:red">*</span></label>
      </div>
      <div  style="float:left;margin-top:10px;margin-bottom:10px;width:95%;font-size:14" >
          <input name=rname id="legalName" style="width:75%;border:1px solid black;border-top:0px;border-left:0px;border-right:0px;" placeholder="The Timeless Marketing Corporation" required></input>
      </div>

      <div  style="float:left;margin-top:20px;margin-bottom:10px;width:75%" >
          <label style="font-family:verdana"><b>Business Addresses</b></label>
      </div>

      <div  style="float:left;margin-top:10px;margin-bottom:10px;width:95%;font-size:14" >
          <label style="font-family:verdana">Address Type</label>
      </div>

      <div  style="float:left;margin-top:10px;margin-bottom:10px;width:45%;font-size:14" >
          <label style="font-family:verdana"><b>Permanent Address</b></label>
      </div>
      <div  style="float:left;margin-top:10px;margin-bottom:10px;width:50%;font-size:14" >
          <input type="checkbox" value="international" name=addresstype id="addressType"/>
          <label label style="font-family:verdana">International</label>
      </div>

      <div  style="float:left;margin-top:10px;margin-bottom:20px;width:95%;font-size:14" >
          <input name=street id="street" style="width:30%;margin-right:10px;border:1px solid black;border-top:0px;border-left:0px;border-right:0px;" placeholder="Street&#42" required></input>
          <input name=aptSuite id="aptSuite" style="width:30%;margin-right:10px;border:1px solid black;border-top:0px;border-left:0px;border-right:0px;" placeholder="Apt/Suite" required></input>
          <input name=number id="number" style="width:30%;margin-right:10px;border:1px solid black;border-top:0px;border-left:0px;border-right:0px;" placeholder="Number" required></input>
      </div>
      <div  style="float:left;margin-top:20px;margin-bottom:10px;width:95%;font-size:14" >
          <input name=city id="city" style="width:30%;margin-right:10px;border:1px solid black;border-top:0px;border-left:0px;border-right:0px;" placeholder="City&#42" required></input>
          <input name=state id="state" style="width:30%;margin-right:10px;border:1px solid black;border-top:0px;border-left:0px;border-right:0px;" placeholder="State&#42" required></input>
          <input name=zipCode id="zipCode" style="width:30%;margin-right:10px;border:1px solid black;border-top:0px;border-left:0px;border-right:0px;" placeholder="ZipCode&#42" required></input>
      </div>

      <div  style="float:left;margin-top:20px;margin-bottom:10px;width:75%" >
          <label style="font-family:verdana"><b>Business Phone Numbers</b></label>
      </div>
      <div  style="float:left;margin-top:20px;margin-bottom:10px;width:95%;font-size:14" >
          <input name=phoneType id="phoneType" style="width:40%;margin-right:10px;border:1px solid black;border-top:0px;border-left:0px;border-right:0px;" placeholder="Phone Type" required></input>
          <input name=phoneNumber id="phoneNumber" style="width:40%;margin-right:10px;border:1px solid black;border-top:0px;border-left:0px;border-right:0px;" placeholder="Phone Number" required></input>
      </div>

      <div  style="float:left;margin-top:10px;margin-bottom:10px;width:50%;font-size:14" >
          <input type="checkbox" name=businessphonenumber value="international" id="businessphonenumber"/>
          <label style="font-family:verdana">International</label>
      </div>

      <div  style="float:left;margin-top:20px;margin-bottom:10px;width:75%" >
          <label style="font-family:verdana"><b>Business Email</b></label>
      </div>

      <div  style="float:left;margin-top:20px;margin-bottom:10px;width:95%;font-size:14" >
          <input name=email id="email" style="width:90%;margin-right:10px;border:1px solid black;border-top:0px;border-left:0px;border-right:0px;" placeholder="Email Address" required></input>
      </div>

      <div  style="float:left;margin-top:20px;margin-bottom:30px;width:85%;text-align:center" >
          <input type="submit" value="Submit" style="font-family:Verdana;font-size:20px;background-color:#3333CC; color:white;border-radius:25px;">
      </div>
    </form:form>
  </div>
</div>

</body>
</html>
