<%@page contentType = "text/html;charset = UTF-8" language = "java" %>
<%@page isELIgnored = "false" %>
<%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>
<html>
   <head>
      <title>BOLT-Result</title>
   </head>

   <body>
      <h2>Submitted Bolt Customer Information</h2>
      <table>
         <tr>
            <td>Legal Name</td>
            <td>${processId}</td>
         </tr>
         <tr>
            <td>Raft Name</td>
            <td>${instanceId}</td>
         </tr>
        
        
         <tr>
            <td>Legal Name</td>
            <td>${lname}</td>
         </tr>
         <tr>
            <td>Raft Name</td>
            <td>${rname}</td>
         </tr>
         <tr>
            <td>Address type</td>
            <td>${addresstype}</td>
         </tr>
         
         <tr>
            <td>Apt Suite</td>
            <td>${aptSuite}</td>
         </tr>
         <tr>
            <td>Number</td>
            <td>${number}</td>
         </tr>
         <tr>
            <td>City</td>
            <td>${city}</td>
         </tr>
         
         <tr>
            <td>State</td>
            <td>${state}</td>
         </tr>
         <tr>
            <td>Zip-Code</td>
            <td>${zipCode}</td>
         </tr>
         <tr>
            <td>Phone-Type</td>
            <td>${phoneType}</td>
         </tr>
         
         <tr>
            <td>Phone-Number</td>
            <td>${phoneNumber}</td>
         </tr>
         <tr>
            <td>Business-Phone-Number</td>
            <td>${businessphonenumber}</td>
         </tr>
         
         <tr>
            <td>Email</td>
            <td>${email}</td>
         </tr>                  
      </table>  
   </body>
  
</html>