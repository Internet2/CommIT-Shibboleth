<%
/**
 * includes.jsp
 *
 * The includes.jsp file houses global tablibs, imports and variables
 * required within each shibboleth view (i.e., login.jsp, login-error.jsp,
 * error.jsp and error-404.jsp)
 *
 */
%>
<%@ taglib uri="urn:mace:shibboleth:2.0:idp:ui" prefix="idpui" %>
<%@ page import="edu.internet2.middleware.shibboleth.common.profile.AbstractErrorHandler" %>

<% String THEME_DIR = "/default"; %>
<% Throwable error = (Throwable) request.getAttribute(AbstractErrorHandler.ERROR_KEY); %>