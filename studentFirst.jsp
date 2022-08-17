<jsp:include page="Studentheader.jsp"/>
<div class="container">
	<div class="row">
		<div class="col-sm-5 mx-auto">
			<form action="showcmpln.jsp" method="post">
			<div class="form-group">
					<label>Name</label>
					<input type="text" value="<%=session.getAttribute("fname") %> <%=session.getAttribute("lname") %>" readonly class="form-control" placeholder="Email ID">
				</div>
				<div class="form-group">
					<label>Role</label>
					<input type="text" value="Student" readonly class="form-control">
				</div>
				<div class="form-group">
					<label>Email ID</label>
					<input type="text" value="<%=session.getAttribute("uid") %>"name="uid" id="uid" readonly class="form-control" placeholder="Email ID">
				</div>
				<input type="submit" value ="View Complain" name="" class="btn">
			</form>
		
		</div>
	
	</div>

</div>

</body>
</html>