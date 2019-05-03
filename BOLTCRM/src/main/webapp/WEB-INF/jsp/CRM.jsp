<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>CRM</title>
</head>
<body>

<div style="height:1990px;width:100%;background:linear-gradient(to bottom, #008000 0%, #00FF00 100%)">
  <div  style="background-color:#006400;height:50px;margin:0px" >
      <div  style="float:left;margin-top:15px;margin-bottom:10px;width:75%;margin-left:10%" >
          <label style="font-family:verdana;color:white;font-size:20"><b>Customer relationship management (CRM)</b></label>
      </div>
  </div>
  <div  style="min-height:900px;float:left;min-width:10%" ></div>
  <div  style="float:left;height:50px" >
      <div  style="float:left;margin-top:15px;margin-bottom:15px;width:100%;" >
          <label style="font-family:verdana;color:white;font-size:20"><b>A Customer Identification Program (CIP)</b></label>
      </div>
  </div>
  <div  style="background-color:white; height:1710px;float:left;width:80%" >
  <div  style="min-height:1710px;float:left;min-width:5%" ></div>
      <form:form method = "POST" action = "/addCrmCustomer/${processid}/${instanceid} "> 
      <div  style="min-height:100%;float:left;min-width:5%" ></div>
      <div  style="float:left;margin-top:30px;margin-bottom:10px;width:75%" >
          <label style="font-family:verdana"><b>Business Name</b></label>
      </div>

      <div  style="float:left;margin-top:10px;margin-bottom:10px;width:95%;font-size:14" >
          <label style="font-family:verdana">Full Legal Name<span style="color:red">*</span></label>
      </div>
      <div  style="float:left;margin-top:10px;margin-bottom:10px;width:95%;font-size:14" >
          <input name=lname id="legalName" style="width:58%;border:1px solid black;border-top:0px;border-left:0px;border-right:0px;" placeholder="The Timeless Marketing Corporation" required></input>
      </div>

      <div  style="float:left;margin-top:10px;margin-bottom:10px;width:95%;font-size:14" >
          <label style="font-family:verdana">DBA Name(If any)</label>
      </div>
      <div  style="float:left;margin-top:10px;margin-bottom:10px;width:95%;font-size:14" >
          <input name=dbaname id="dba" style="width:58%;border:1px solid black;border-top:0px;border-left:0px;border-right:0px;" placeholder="The Timeless Marketing Corporation"></input>
      </div>

      <div  style="float:left;margin-top:20px;margin-bottom:10px;width:75%" >
          <label style="font-family:verdana"><b>Primary Addresses</b></label>
      </div>

      <div  style="float:left;margin-top:10px;margin-bottom:20px;width:95%;font-size:14" >
          <input name=addressone id="PAL1" style="width:58%;margin-right:10px;border:1px solid black;border-top:0px;border-left:0px;border-right:0px;" placeholder="Primary Address Line 1" required></input>
      </div>
      <div  style="float:left;margin-top:20px;margin-bottom:10px;width:95%;font-size:14" >
          <input name=addresstwo id="PAL2" style="width:58%;margin-right:10px;border:1px solid black;border-top:0px;border-left:0px;border-right:0px;" placeholder="Primary Address Line 2" required></input>
      </div>

      <div  style="float:left;margin-top:10px;margin-bottom:10px;width:95%;font-size:14" >
        <label style="font-family:verdana">Primary Addresses Country<span style="color:red">*</span></label>
    </div>

    <div  style="float:left;margin-top:10px;margin-bottom:10px;width:95%;font-size:14" >
        <input name=addresscountry id="PrimaryAddressCountry" style="width:58%;border:1px solid black;border-top:0px;border-left:0px;border-right:0px;" placeholder="Primary Address Country" required></input>
    </div>

    <div  style="float:left;margin-top:10px;margin-bottom:10px;width:95%;font-size:14" >
        <label style="font-family:verdana">EIN Number<span style="color:red">*</span></label>
    </div>
    
      <div  style="float:left;margin-top:20px;margin-bottom:10px;width:95%;font-size:14" >
          <input name=ein id="einNumber" style="width:58%;margin-right:10px;border:1px solid black;border-top:0px;border-left:0px;border-right:0px;" placeholder="Phone Type" required></input>
      </div>

      <div  style="float:left;margin-top:10px;margin-bottom:10px;width:95%;font-size:14" >
        <label style="font-family:verdana">Account Product Type<span style="color:red">*</span></label>
    </div>

    <div  style="float:left;margin-top:20px;margin-bottom:10px;width:95%;font-size:14" >
        <select name=accountproducttype  style="width: 575px;">
            <option value="volvo">Volvo</option>
            <option value="saab">Saab</option>
            <option value="opel">Opel</option>
            <option value="audi">Audi</option>
          </select>
    </div>


    <div  style="float:left;margin-top:10px;margin-bottom:10px;width:95%;font-size:14" >
        <label style="font-family:verdana">Country of legal formation<span style="color:red">*</span></label>
    </div>

    <div  style="float:left;margin-top:20px;margin-bottom:10px;width:95%;font-size:14" >
        <select name=Countryoflegalformation  style="width: 575px;">
            <option value="USA">USA</option>
            <option value="UK">UK</option>
            <option value="INDIA">INDIA</option>
            <option value="SPAIN">SPAIN</option>
          </select>
    </div>

    <div  style="float:left;margin-top:10px;margin-bottom:10px;width:95%;font-size:14" >
        <label style="font-family:verdana">Country of domicile<span style="color:red">*</span></label>
    </div>

    <div  style="float:left;margin-top:20px;margin-bottom:10px;width:95%;font-size:14" >
        <select name=Countryofdomicile  style="width: 575px;">
            <option value="USA">USA</option>
            <option value="UK">UK</option>
            <option value="INDIA">INDIA</option>
            <option value="SPAIN">SPAIN</option>
          </select>
    </div>


    <div  style="float:left;margin-top:10px;margin-bottom:10px;width:95%;font-size:14" >
        <label style="font-family:verdana">Engaged in internet gambling<span style="color:red">*</span></label>
    </div>

    <div  style="float:left;margin-top:20px;margin-bottom:10px;width:95%;font-size:14" >
        <select name=gambling  style="width: 575px;">
            <option value="YES">YES</option>
            <option value="NO">NO</option>
          </select>
    </div>


    <div  style="float:left;margin-top:10px;margin-bottom:10px;width:95%;font-size:14" >
        <label style="font-family:verdana">Customer Mailing Address<span style="color:red">*</span></label>
    </div>

    <div  style="float:left;margin-top:10px;margin-bottom:10px;width:95%;font-size:14" >
        <input name=custemail id="customermailingaddress" style="width:58%;border:1px solid black;border-top:0px;border-left:0px;border-right:0px;" placeholder="Customer Mailing Address" required></input>
    </div>

    <div  style="float:left;margin-top:10px;margin-bottom:10px;width:95%;font-size:14" >
        <label style="font-family:verdana">Nature of Business<span style="color:red">*</span></label>
    </div>

    <div  style="float:left;margin-top:20px;margin-bottom:10px;width:95%;font-size:14" >
        <select name=natureofBusiness  style="width: 575px;">
            <option value="Trade">Trade</option>
            <option value="Import/Export">Import/Export</option>
          </select>
    </div>


    <div  style="float:left;margin-top:10px;margin-bottom:10px;width:95%;font-size:14" >
        <label style="font-family:verdana">Annual Sales<span style="color:red">*</span></label>
    </div>

    <div  style="float:left;margin-top:20px;margin-bottom:10px;width:95%;font-size:14" >
        <select name=annualSales  style="width: 575px;">
            <option value="$10000-$20000">$10000-$20000</option>
            <option value="$20000+">$20000+</option>
          </select>
    </div>


    <div  style="float:left;margin-top:10px;margin-bottom:10px;width:95%;font-size:14" >
        <label style="font-family:verdana">Owner Type<span style="color:red">*</span></label>
    </div>

    <div  style="float:left;margin-top:20px;margin-bottom:10px;width:95%;font-size:14" >
        <select name=ownerType  style="width: 575px;">
            <option value="BENEFICIALOWNER">BENEFICIAL OWNER</option>
            <option value="INDIVIDUAL">INDIVIDUAL</option>
            <option value="ENTITY">ENTITY</option>
          </select>
    </div>

    <div  style="float:left;margin-top:10px;margin-bottom:10px;width:95%;font-size:14" >
        <label style="font-family:verdana">Name of Utimate Beneficial Owner<span style="color:red">*</span></label>
    </div>

    <div  style="float:left;margin-top:10px;margin-bottom:10px;width:95%;font-size:14" >
        <input name=beneficialOwner id="beneficialOwnerid" style="width:58%;border:1px solid black;border-top:0px;border-left:0px;border-right:0px;" placeholder="Customer Mailing Address" required></input>
    </div>

    <div  style="float:left;margin-top:10px;margin-bottom:10px;width:95%;font-size:14" >
        <label style="font-family:verdana">CustomerPermit<span style="color:red">*</span></label>
    </div>

    <div  style="float:left;margin-top:20px;margin-bottom:10px;width:95%;font-size:14" >
        <select name=customerPermit  style="width: 575px;">
            <option value="YES">YES</option>
            <option value="NO">NO</option>
          </select>
    </div>


    <div  style="float:left;margin-top:10px;margin-bottom:10px;width:95%;font-size:14" >
        <label style="font-family:verdana">What is the Purpose of Account<span style="color:red">*</span></label>
    </div>

    <div  style="float:left;margin-top:20px;margin-bottom:10px;width:95%;font-size:14" >
        <select name=purposeofaccount  style="width: 575px;">
            <option value="BENEFICIALOWNER">BENEFICIAL OWNER</option>
            <option value="INDIVIDUAL">INDIVIDUAL</option>
            <option value="ENTITY">ENTITY</option>
          </select>
    </div>


    <div  style="float:left;margin-top:10px;margin-bottom:10px;width:95%;font-size:14" >
        <label style="font-family:verdana">Will you frequently use your account for any Transactions outside of US<span style="color:red">*</span></label>
    </div>

    <div  style="float:left;margin-top:20px;margin-bottom:10px;width:95%;font-size:14" >
        <select name=tranFrequency  style="width: 575px;">
            <option value="YES">YES</option>
            <option value="NO">NO</option>
          </select>
    </div>


    <div  style="float:left;margin-top:10px;margin-bottom:10px;width:95%;font-size:14" >
        <label style="font-family:verdana">Will this account be using Remote or Mobile Check Deposite Capture<span style="color:red">*</span></label>
    </div>

    <div  style="float:left;margin-top:20px;margin-bottom:10px;width:95%;font-size:14" >
        <select name=captureType  style="width: 575px;">
            <option value="YES">YES</option>
            <option value="NO">NO</option>
          </select>
    </div>

      <div  style="float:left;margin-top:20px;margin-bottom:30px;width:85%;text-align:center" >
          <input type="submit" value="Submit" style="font-family:Verdana;font-size:20px;background-color:#3333CC; color:white;">
      </div>
    </form:form>
  </div>
</div>

</body>
</html>
