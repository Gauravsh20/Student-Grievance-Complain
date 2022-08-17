<jsp:include page="Studentheader.jsp"/>
<jsp:include page="msg.jsp"/>
<h3>Change Password </h3>
<div class="container">
<div class="row">
<div class="col-sm-5 m-auto">
				<form method="post" action="">
					<div class="form-group">
						<label>Current password</label>
						<input type="text" placeholder="current password" required class="form-control" name="pss">
					</div>
					<div class="form-group">
						<label>New Password</label>
						<input type="password"placeholder="New Password" required class="form-control" name="npss">
					</div>
					<div class="form-group">
						<label> Confirm Password</label>
						<input type="password"placeholder="Confirm Password" required class="form-control" name="cpss">
					</div>
					
					<input type="submit" class="btn float-left " value="Change password">
				</form>
			</div>
			</div>
			</div>

</body>
</html>