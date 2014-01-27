<%@page import="edu.internet2.middleware.shibboleth.common.profile.AbstractErrorHandler"%>
<%@ taglib uri="urn:mace:shibboleth:2.0:idp:ui" prefix="idpui" %>

<% String THEME_DIR = "/default"; %>
<% Throwable error = (Throwable) request.getAttribute(AbstractErrorHandler.ERROR_KEY); %>

<!DOCTYPE html>
<html lang="en">
	<head>
		<title>The CommIT Project: Error</title>

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

	<body class="page">
		<header class="header-module">
			<div class="container-fluid">
				<div class="row-fluid">
					<div class="span12">
						<!--Logo Module-->
						<div class="logo-module logo-primary">
							<a href="http://login.commonidtrust.org" title="The Commit Project">&nbsp;</a>
						</div>
						<div class="logo-module logo-secondary">
							<a href="http://umbc.edu/" title="UMBC">&nbsp;</a>
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
							<div class="alert alert-block alert-error">
								<h1 class="alert-heading">Error.</h1>
								<p>
									An error occurred while processing your request. <strong>Please contact your
									helpdesk or user ID office for assistance</strong>. Please be advised, this service
									requires cookies. Ensure that they are enabled and try going back to your
									desired resource and login again. In addition, use of your browser's back
									button may cause specific errors that can be resolved by also going back to
									your desired resource and loging in again. If you think you were sent here
									in error, please contact <idpui:serviceContact>technical support</idpui:serviceContact>.
								</p>
							</div>
							<small class="muted alert-code">
								<% 
								if(error != null){
									org.owasp.esapi.Encoder esapiEncoder = org.owasp.esapi.ESAPI.encoder();
								%>
								<em>Error Message: <%= esapiEncoder.encodeForHTML(error.getMessage()) %></em>
								<% } %>
							</small>
						</div>
					</div>
				</div>
			</div>
		</section>

		<footer class="footer-module">
			<div class="container-fluid">
				<div class="row-fluid">
					<div class="span12">
						<!--Copyright Module-->
						<div class="copyright-module">
							<span>Copyright 2013 Internet2</span>
						</div>
					</div>
				</div>
			</div>
		</footer>
	</body>
</html>