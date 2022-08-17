<%@page import="sgsystem.cmplns"%>
<%@page import="java.util.List"%>
<%@page import="sgsystem.sgsystemcon"%>
<%@page import="java.sql.*"%>
<jsp:include page="Studentheader.jsp"/>
<div class="container"> 
<div class="row">
	<h2>Complain's</h2>  
</div>
      
  <table class="table table-bordered">
    <thead>
      <tr>
        <th>Token No.</th>
        <th>Categary</th>
        <th>Complain</th>
         <th>Delete</th>
      </tr>
    </thead>
    <tbody>
      
<%
String uid=request.getParameter("uid");
System.out.println("Gaurav"+ uid);
System.out.println("Gaurav2"+ uid);
List<cmplns> list=sgsystemcon.getList(uid);
for (cmplns cm:list){
	%>
	<tr>
        <td><%=cm.getTno() %></td>
        <td><%=cm.getCtgy()%></td>
        <td><%=cm.getCmplnbx()%></td>
        <td><a href="Delete" class="btn" id="">Delete</a> </td>
	</tr>
	<%
}
%>
      
    </tbody>
  </table>
</div>
</body>
</html>