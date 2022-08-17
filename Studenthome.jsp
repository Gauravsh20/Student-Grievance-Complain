<jsp:include page="Studentheader.jsp"/>
<div class="container">
	<div class="row">
		<div class="col-sm-5 mx-auto">
			<form action="svcmpln" method="post">
				<div class="form-group">
					<label>Email ID</label>
					<input type="text" value="<%=session.getAttribute("uid") %>"name="uid" id="uid" readonly class="form-control" placeholder="Email ID">
				</div>
				<div class="form-group">
				<label>Select Category</label>
				<select name="ctgy" class="form-control" id="ctgy" required>
					<option value="">--Please choose an option--</option>
  					<option value="Staff">Staff</option>
  					<option value="Teacher">Teacher</option>
 					<option value="Grievnce Member">Grievnce Member</option>
 					<option value="Fess and Other Charges">Fess and Other Charges</option>
 					<option value="Other">Teacher</option>
				</select>
				</div>
				<div class="form-group">
					<label>Complain Box</label>
					<textarea name="cmplnbx" id="cmplnbx"  rows="8" cols="50" style="border:solid 1px green;"></textarea>
				</div>
				<input type="submit" value ="Submit" name="" class="btn">
			</form>
		</div>
	
	</div>

</div>
</body>
</html>