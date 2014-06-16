<%@ include file="includes.jsp" %>

<% String PAGE_TITLE = "Login"; %>

<!DOCTYPE html>
<html lang="en">
	<%@ include file="head.jsp" %>

	<body class="page login-page">
		<header class="header-module">
			<div class="container-fluid">
				<div class="row-fluid">
					<div class="span5">
						<!--Logo Module-->
						<%@ include file="logo.jsp" %>
					</div>
					<div class="span7">
						<!--Link Module-->
						<%@ include file="links.jsp" %>
					</div>
				</div>
			</div>
		</header>

		<section>
			<div class="main">
				<div class="container-fluid">
					<div class="row-fluid">
						<div class="span12">
							<!--Datacard-->
							<div class="datacard">
								<div class="titlebar">
									<h1>Please Login</h1>
								</div>
								<div class="content">
									<!--Login Module-->
									<div class="login-module">
										<% if ("true".equals(request.getAttribute("loginFailed"))) { %>
											<div class="alert alert-block alert-danger cm-alert cm-alert-danger">
												<button type="button" class="close" data-dismiss="alert">&times;</button>
												<p>Your <strong>username</strong> and <strong>password</strong> are incorrect. Please try again.</p>
											</div>
										<% } %>
										<% if(request.getAttribute("actionUrl") != null){ %>
										<form id="loginForm" action="<%=request.getAttribute("actionUrl")%>" method="post">
										<% }else{ %>
										<form id="loginForm" action="j_security_check" method="post">
										<% } %>

											<!--USERNAME-->
											<div class="control-group">
												<label for="username" class="control-label hidden">Username:</label>
												<div class="controls">
													<input id="username" type="text" name="j_username" class="input-block-level cm-input" placeholder="Username">
												</div>
											</div>

											<!--PASSWORD-->
											<div class="control-group">
												<label for="password" class="control-label hidden">Password:</label>
												<div class="controls">
													<input id="password" type="password" name="j_password" class="input-block-level cm-input" placeholder="Password">
												</div>
											</div>

											<!--FORM CONTROLS-->
											<div class="controls login-controls">
												<button type="submit" class="btn btn-large btn-block btn-primary cm-btn cm-btn-large cm-btn-block cm-btn-primary" value="Login">Login</button>
											</div>

											<!--FORGOT PASSWORD & REGISTRATION-->
											<div class="controls clearfix">
												<div class="row-fluid">
													<div class="span6">
														<ul class="unstyled text-left">
															<li><a href="https://account.commonidtrust.org/IdentityProvisioning/forgot_userid_index.jsp" class="btn btn-link cm-btn-link forgot">Forgot Username?</a></li>
															<li><a href="https://account.commonidtrust.org/IdentityProvisioning/forgot_password_index.jsp" class="btn btn-link cm-btn-link forgot">Forgot/Reset Password?</a></li>
														</ul>
													</div>
													<div class="span6">
														<a href="http://account.commonidtrust.org/IdentityProvisioning/" class="btn btn-danger cm-btn cm-btn-danger service-logo-url modal-trigger pull-right" target="_blank">Register</a>
													</div>
												</div>
											</div>
										</form>
									</div>
								</div>
								<div class="actions"></div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>

		<footer class="footer-module">
			<div class="container-fluid">
				<div class="row-fluid">
					<div class="span9">
						<!--Link Module-->
						<%@ include file="links.jsp" %>
					</div>
					<div class="span3">
						<!--Copyright Module-->
						<div class="copyright-module">
							<span>Copyright 2013 Internet2</span>
						</div>
					</div>
				</div>
			</div>
		</footer>

		<!--FORM MODAL-->
		<div id="modal" class="modal hide fade">
			<div class="modal-header">
				<h3>Important!</h3>
			</div>
			<div class="modal-body">
				<div class="alert alert-error">
					<small>Please do not use your browser <strong>BACK</strong> button during the registration process.</small>
				</div>
				<p>
					The <strong>Common Identity and Trust Collaborative (CommIT)</strong> makes it easier 
					and more secure for you to apply to college. After completing this registration process 
					you can use this one user ID and password to access many admissions-related sites at 
					participating schools and companies.
				</p>
			</div>
			<div class="modal-footer">
				<a id="modalPrimary" class="btn btn-primary cm-btn cm-btn-primary">OK</a>
			</div>
		</div>

		<script type="text/javascript" src="<%=request.getContextPath()%>/js/lib/jquery/jquery-min.js"></script>
		<script type="text/javascript" src="<%=request.getContextPath()%>/js/lib/underscore/underscore-min.js"></script>
		<script type="text/javascript" src="<%=request.getContextPath()%>/js/lib/bootstrap/bootstrap-min.js"></script>
		<script type="text/javascript" src="<%=request.getContextPath()%>/js/lib/validation/jquery-validation-min.js"></script>
		<script type="text/javascript" src="<%=request.getContextPath()%>/js/src/logo-parser-min.js"></script>
		<script type="text/javascript" src="<%=request.getContextPath()%>/js/src/register-min.js"></script>
		<script type="text/javascript" src="<%=request.getContextPath()%>/js/src/login-min.js"></script>

		<%@ include file="scripts.jsp" %>
	</body>
</html>