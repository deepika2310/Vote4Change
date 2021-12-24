<%-- 
    Document   : votingresponse
    Created on : Jun 17, 2021, 10:54:21 AM
    Author     : kumar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@page import="evoting.dto.CandidateInfo,evoting.dao.VoteDAO"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="stylesheet/backgroundimage.css" type="text/css" rel="stylesheet">
        <link href="stylesheet/showcandidate.css" rel="stylesheet">
        <link href="stylesheet/pageheader.css" rel="stylesheet">
        <title>Voting Response</title>
    </head>
    <body>
        <%
            String userid=(String)session.getAttribute("userid");
           if(userid==null)
            {
                session.invalidate();
                response.sendRedirect("accessdenied.jsp");
                return;
            }
           CandidateInfo cd=(CandidateInfo)session.getAttribute("candidate");
           StringBuffer displayBlock=new StringBuffer("");
           displayBlock.append("<div class='sticky'><div class='candidate'>VOTE FOR CHANGE</div><br> ");
           if(cd==null)
                {
                    displayBlock.append("<br><div class='subcandidate'>Sorry! Your Vote could not be casted</div><br><br>");
                    displayBlock.append("<div><h4 id='logout'><a href='LoginControllerServlet?logout=logout'>Logout</a></h4></div>");
                    out.println(displayBlock);
                }
                else
                {
                    displayBlock.append("<div class='subcandidate' >Thank you for Voting!!</div><br>");
                    displayBlock.append("<div class='candidateprofile'>Your Vote Added Successfully!!</div>");
                    displayBlock.append("<div class='candidateprofile' id='"+cd.getCandidateId()+"'>");
                    displayBlock.append("<strong>You are Voted to :</strong><br/><img src='data:image/jpg;base64,"+cd.getSymbol()+"' style='width:200px;height:200px;'/>");
                    displayBlock.append("<br/><div class='candidateprofile'><p>Candidate Id:"+cd.getCandidateId()+"<br/>");
                    displayBlock.append("Candidate Name:"+cd.getCandidateName()+"<br/>");
                    displayBlock.append("Party:"+cd.getParty()+"</div><br/></div>");
                    out.println(displayBlock);
                }
        %>
    </body>
</html>

