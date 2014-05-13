<%@ taglib uri="urn:mace:shibboleth:2.0:idp:ui" prefix="idpui" %>

<% String THEME_DIR = "/default"; %>

<!DOCTYPE html>
<html lang="en">
	<head>
		<title>The CommIT Project: Login</title>

		<!--META TAGS-->
		<meta charset="utf-8">
		<meta name="language" content="English">
		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="expires" content="-1">
		<meta name="robots" content="noindex, nofollow">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta name="apple-mobile-web-app-capable" content="yes" />
		<meta names="apple-mobile-web-app-status-bar-style" content="black-translucent" />
		<meta name="description" content="Identity Provisioning">
		<meta name="keywords" content="Identity Provisioning">

		<!--CSS Resources-->
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css<%=THEME_DIR%>/commit.css"/>

		<!--HTML5 SHIM (for IE6-8 support of HTML5 elements)-->
		<!--[if lt IE 9]>
		<script src="<%=request.getContextPath()%>/js/lib/html5/html5shiv-min.js"></script>
		<![endif]-->

		<!--FAV & TOUCH ICONS-->
		<link rel="shortcut icon" href="<%=request.getContextPath()%>/ico/ico.png">
		<link rel="apple-touch-icon-precomposed" sizes="144x144" href="<%=request.getContextPath()%>/ico/icon144.png">
		<link rel="apple-touch-icon-precomposed" sizes="114x114" href="<%=request.getContextPath()%>/ico/icon114.png">
		<link rel="apple-touch-icon-precomposed" sizes="72x72" href="<%=request.getContextPath()%>/ico/icon72.png">
		<link rel="apple-touch-icon-precomposed" sizes="57x57" href="<%=request.getContextPath()%>/ico/icon57.png">
	</head>

	<body class="page login-page">
		<header class="header-module">
			<div class="container-fluid">
				<div class="row-fluid">
					<div class="span5">
						<!--Logo Module-->
						<div class="logo-module logo-primary">
							<a href="http://login.commonidtrust.org" title="The Commit Project">&nbsp;</a>
						</div>
						<div id="serviceLogoContainer" class="logo-module logo-secondary">
							<idpui:serviceLogo cssId="serviceLogo"></idpui:serviceLogo>
						</div>
					</div>
					<div class="span7">
						<!--Link Module-->
						<div class="link-module">
							<ul class="link-list list-inline clearfix">
								<li><a class="selected" href="https://login.commonidtrust.org/idp/Authn/UserPassword" title="Login">Login</a></li>
								<li><a href="http://login.commonidtrust.org/info.html" class="service-logo-url" title="Information" target="_blank">Information</a></li>
								<li><a href="http://login.commonidtrust.org/faq.html" class="service-logo-url" title="FAQ" target="_blank">FAQ</a></li>
								<li><a href="http://login.commonidtrust.org/privacy.html" class="service-logo-url" title="Privacy" target="_blank">Privacy</a></li>
								<li><a href="http://login.commonidtrust.org/terms.html" class="service-logo-url" title="Terms of Use" target="_blank">Terms of Use</a></li>
								<li><a href="http://account.commonidtrust.org/IdentityProvisioning/" class="service-logo-url modal-trigger" target="_blank" title="Register">Register</a></li>
							</ul>
						</div>
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
															<li><a href="https://account.commonidtrust.org/IdentityProvisioning/forgot_userid_index.jsp" class="btn btn-link cm-btn-link forgot">Forgot UserId?</a></li>
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
						<div class="link-module clearfix">
							<ul class="list-inline clearfix pull-left">
								<li><a class="selected" href="https://login.commonidtrust.org/idp/Authn/UserPassword" title="Login">Login</a></li>
								<li><a href="http://login.commonidtrust.org/info.html" class="service-logo-url" title="Information" target="_blank">Information</a></li>
								<li><a href="http://login.commonidtrust.org/faq.html" class="service-logo-url" title="FAQ" target="_blank">FAQ</a></li>
								<li><a href="http://login.commonidtrust.org/privacy.html" class="service-logo-url" title="Privacy" target="_blank">Privacy</a></li>
								<li><a href="http://login.commonidtrust.org/terms.html" class="service-logo-url" title="Terms of Use" target="_blank">Terms of Use</a></li>
								<li><a href="http://account.commonidtrust.org/IdentityProvisioning/" class="service-logo-url modal-trigger" target="_blank" title="Register">Register</a></li>
							</ul>
						</div>
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
	</body>
</html>