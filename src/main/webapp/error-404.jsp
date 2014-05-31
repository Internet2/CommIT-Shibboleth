<%@ include file="includes.jsp" %>

<% String PAGE_TITLE = "404"; %>

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
								<h1 class="alert-heading">Not Found.</h1>
								<p>An error occurred while processing your request. Please contact your helpdesk or user ID office for assistance.</p>
							</div>
							<small class="muted alert-code"><em>Error Message: Invalid IdP URL (HTTP 404).</em></small>
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