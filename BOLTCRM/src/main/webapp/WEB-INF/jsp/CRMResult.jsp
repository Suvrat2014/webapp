<%@page contentType = "text/html;charset = UTF-8" language = "java" %>
<%@page isELIgnored = "false" %>
<%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>
<html>
   <head>
      <title>CRM-Result</title>
   </head>

   <body>
      <h2>Submitted CRM Customer Information</h2>
      <table>
         <tr>
            <td>Legal Name</td>
            <td>${lname}</td>
         </tr>
         <tr>
            <td>Raft Name</td>
            <td>${dbaname}</td>
         </tr>
         <tr>
            <td>Address type</td>
            <td>${addressone}</td>
         </tr>
         
         <tr>
            <td>Apt Suite</td>
            <td>${addresstwo}</td>
         </tr>
         <tr>
            <td>Number</td>
            <td>${addresscountry}</td>
         </tr>
         <tr>
            <td>City</td>
            <td>${ein}</td>
         </tr>
         
         <tr>
            <td>State</td>
            <td>${accountproducttype}</td>
         </tr>
         <tr>
            <td>Zip-Code</td>
            <td>${Countryoflegalformation}</td>
         </tr>
         <tr>
            <td>Phone-Type</td>
            <td>${Countryofdomicile}</td>
         </tr>
         
         <tr>
            <td>Phone-Number</td>
            <td>${gambling}</td>
         </tr>
         <tr>
            <td>Business-Phone-Number</td>
            <td>${custemail}</td>
         </tr>
         
         <tr>
            <td>Email</td>
            <td>${natureofBusiness}</td>
         </tr>    
         <tr>
            <td>Email</td>
            <td>${annualSales}</td>
         </tr> 
         <tr>
            <td>Email</td>
            <td>${ownerType}</td>
         </tr> 
         <tr>
            <td>Email</td>
            <td>${beneficialOwner}</td>
         </tr> 
         <tr>
            <td>Email</td>
            <td>${customerPermit}</td>
         </tr> 
         <tr>
            <td>Email</td>
            <td>${purposeofaccount}</td>
         </tr> 
         <tr>
            <td>Email</td>
            <td>${tranFrequency}</td>
         </tr> 
         <tr>
            <td>Email</td>
            <td>${captureType}</td>
         </tr>               
      </table>  
   </body>
  
</html>
