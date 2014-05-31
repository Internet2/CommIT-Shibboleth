<%
/**
 * head.jsp
 *
 * The head.jsp file houses the global head tag for all
 * shibboleth views (i.e., login.jsp, login-error.jsp,
 * error.jsp and error-404.jsp). For the most part,
 * only meta tags and css dependencies should be placed
 * within this file.
 *
 */
%>
<head>
	<title>The CommIT Project: <%=PAGE_TITLE%></title>

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