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
									<%
									if (error != null) {
										org.owasp.esapi.Encoder esapiEncoder = org.owasp.esapi.ESAPI.encoder();
									%>
									<%= esapiEncoder.encodeForHTML(error.getMessage()) %>
									<% } %>
								</p>
							</div>
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