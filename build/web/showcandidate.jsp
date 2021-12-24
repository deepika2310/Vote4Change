<%-- 
    Document   : showcandidate
    Created on : Jun 15, 2021, 11:49:23 AM
    Author     : kumar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList,evoting.dto.CandidateInfo" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="jsscript/vote.js"></script>
        <script src="jsscript/jquery.js"></script>
        <link href="stylesheet/backgroundimage.css" rel="stylesheet">
        <link href="stylesheet/pageheader.css" rel="stylesheet">
        <link href="stylesheet/showcandidate.css" rel="stylesheet">
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
   
        <title>show candidate</title>
    </head>
    <body>
        <%
            String userid=(String)session.getAttribute("userid");
            if(userid==null)
            {
                response.sendRedirect("accesdenied.html");
                return;
            }
            StringBuffer displayBlock=new StringBuffer("");
            displayBlock.append("<div class='sticky'><div class='candidate'>VOTE FOR CHANGE</div><br>"
                  + "<br><div class='subcandidate'>Whom do you want to vote ?</div>"
                  +"<div class='logout'><a href='login.html'>logout</a></div>" 
                  +"</div><div class='buttons'>");
            ArrayList<CandidateInfo> candidate=(ArrayList)request.getAttribute("candidateList");
            for(CandidateInfo c:candidate)
                {
                      displayBlock.append("<input id='"+c.getCandidateId()+"' value='"+c.getCandidateId()+"' name='flat' type='radio' onclick='addvote()' />");
                      displayBlock.append("<label for='"+c.getCandidateId()+"'><img src='data:image/jpg;base64,"+c.getSymbol()+"' style='width:300px;height:200px;'/></label>");
                      displayBlock.append("<br/><div class='candidateprofile'><p>Candidate Id:"+c.getCandidateId()+"<br/>");
                      displayBlock.append("Candidate Name:"+c.getCandidateName()+"<br/>");
                      displayBlock.append(" Party:"+c.getParty()+"</label><br/></div>");
                }
             out.println(displayBlock);
      %>

</body>
</html>
