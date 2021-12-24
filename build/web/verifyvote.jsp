<%-- 
    Document   : verifyvote
    Created on : Jun 17, 2021, 11:07:20 AM
    Author     : kumar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String userid=(String)session.getAttribute("userid");
    if(userid==null)
    {
        session.invalidate();
        response.sendRedirect("accessdenied.html");
        return;
    }
    boolean result=(boolean)request.getAttribute("result");
    if(result==true)
        out.println("success");
    else
        out.println("failed");
%>
