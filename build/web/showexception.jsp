<%-- 
    Document   : showexception
    Created on : May 7, 2021, 1:51:17 PM
    Author     : kumar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    Exception ex=(Exception)request.getAttribute("Exception");
    System.out.println("Exception is:"+ex);
    out.println("Some Exception occurred"+ex.getMessage());
%>
