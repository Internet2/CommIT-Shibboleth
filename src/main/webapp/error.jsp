<%@ include file="includes.jsp" %>

<% String PAGE_TITLE = "Error"; %>

<!DOCTYPE html>
<html lang="en">
	<%@ include file="head.jsp" %>

	<body class="page">
		<header class="header-module">
			<div class="container-fluid">
				<div class="row-fluid">
					<div class="span12">
						<!--Logo Module-->
						<%@ include file="logo.jsp" %>
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

		<%@ include file="scripts.jsp" %>
	</body>
</html>