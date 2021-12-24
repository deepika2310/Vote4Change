<%-- 
    Document   : adminshowcandidate
    Created on : Jun 14, 2021, 9:09:44 AM
    Author     : kumar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="org.json.JSONObject"%>
<%@page import="evoting.dto.CandidateDetails"%>
<%@page import="java.util.ArrayList"%>
<%
  String userid=(String)session.getAttribute("userid");
  if(userid==null)
        {
           response.sendRedirect("accessdenied.html");
           return;
        }
  String result=(String)request.getAttribute("result");
  StringBuffer displayBlock=new StringBuffer();
  if(result!=null && result.equalsIgnoreCase("candidatelist"))
  {
      ArrayList<String> candidateId=(ArrayList<String>)request.getAttribute("candidateid");
      displayBlock.append("<option value=''>Choose Id</option>");
        for(String c:candidateId)
        {
            displayBlock.append("<option value='"+c+"'>"+c+"</option>");
        }
   JSONObject json=new JSONObject();
   json.put("cids", displayBlock.toString());
   out.println(json);
   System.out.println("In adminshowcand");
   System.out.println(displayBlock);
    }
  else if(result!=null && result.equalsIgnoreCase("details"))
  {
      CandidateDetails cd=(CandidateDetails)request.getAttribute("candidate");
      String str="<img src='data:image/jpg:base64,"+cd.getSymbol()+"'style='width:300px;height:200px;'/>";
  displayBlock.append("<table>");
  displayBlock.append("<tr><th>User Id:</th><td>"+cd.getUserId()+"</td></tr>");
  displayBlock.append("<tr><th>Candidate Name:</th><td>"+cd.getCandidateName()+"</td></tr>");
  displayBlock.append("<tr><th>City:</th><td>"+cd.getCity()+"</td></tr>");
  displayBlock.append("<tr><th>Party:</th><td>"+cd.getParty()+"</td></tr>");
  displayBlock.append("<tr><th>Symbol:</th><td>"+str+"</td></tr>");
  displayBlock.append("</table>");
JSONObject json=new JSONObject();
json.put("subdetails", displayBlock.toString());
out.println(json);
System.out.println("In adminshowcand");
System.out.println(displayBlock);
  }   

%>