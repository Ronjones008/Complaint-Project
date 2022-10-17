<%@page import="java.sql.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="com.infinite.demo.Resolve"%>
<%@page import="java.util.List"%>
<%@page import="com.infinite.demo.ComplaintDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


  		  <%
  		  ComplaintDAO dao = new ComplaintDAO();
  		  List<Resolve> reslist = dao.showResolve();
  		  out.println(reslist.size());
  		  %>
  		  <form method="get" action="ResolveShow.jsp">
  		   <table border="3" align="center">
  		   	<tr>
  		   		<th>ComplaintId</th>
  		   		<th>ComplaintDate</th>
  		   		<th>ResolveDate</th>
  		   		<th>ResolveBy</th>
  		   		<th>Comments</th>
  		   		<th>TAT</th>
  		   	</tr>
  		   	<%
  		   	 for(Resolve resolve : reslist){
  		   		 String id = resolve.getComplaintId();
  		        	int tat = dao.tat(id);
  		   	%>
  		   	<tr>
  		   		<td><%=resolve.getComplaintId()%></td>
  		   		<td><%=resolve.getComplaintDate()%></td>
  		   		<td><%=resolve.getResolveDate()%></td>
  		   		<td><%=resolve.getResolvedBy()%></td>
  		   		<td><%=resolve.getComments()%></td>
  		   		<td><%=tat%>
  		   	</tr>
  		   	<%
  		   	 }
  		   	%>
  		   	
  		   </table>
  		  </form>

</body>
</html>