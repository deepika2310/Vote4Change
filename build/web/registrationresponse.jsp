<%-- 
    Document   : registrationresponse
    Created on : May 7, 2021, 12:49:26 PM
    Author     : kumar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
   boolean result=(boolean)request.getAttribute("result"); 
   boolean userfound=(boolean)request.getAttribute("userfound"); 
   if(userfound==true)
    out.println("uap");
   else if(result==true)
    out.println("success");
   else
    out.println("error");
%>
