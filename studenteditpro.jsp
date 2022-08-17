<jsp:include page="Studentheader.jsp"/>
	<div class="row">
		<div class="col-sm-5 mx-auto">
		<form action="" method="post">
			<div class="form-group">
					<label>Name</label>
					<input type="text" value="<%=session.getAttribute("fname")%> <%=session.getAttribute("lname") %>" class="form-control" placeholder="Email ID">
				</div>
				
				<div class="form-group">
					<label>Email ID</label>
					<input type="text" value="<%=session.getAttribute("uid") %>" class="form-control" placeholder="Email ID">
				</div>
				
				<input type="submit" class="btn"  value="Update">
			</form>
		</div>
	
	</div>

			
</body>
</html>