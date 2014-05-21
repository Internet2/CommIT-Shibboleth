<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="urn:mace:shibboleth:2.0:idp:ui" prefix="idpui" %>
<%@ page import="edu.internet2.middleware.shibboleth.common.relyingparty.RelyingPartyConfigurationManager" %>
<%@ page import="edu.internet2.middleware.shibboleth.idp.authn.LoginContext" %>
<%@ page import="edu.internet2.middleware.shibboleth.idp.util.HttpServletHelper" %>
<%@ page import="java.util.Locale" %>
<%@ page import="org.apache.commons.lang.StringUtils" %>
<%@ page import="org.opensaml.saml2.metadata.EntityDescriptor" %>
<%@ page import="org.opensaml.saml2.metadata.OrganizationDisplayName" %>
<%@ page import="org.opensaml.saml2.metadata.OrganizationURL" %>
<%@ page import="org.opensaml.util.storage.StorageService" %>

<%
   // Get organisation data
   StorageService storageService = HttpServletHelper.getStorageService(application);
   LoginContext loginContext = HttpServletHelper.getLoginContext(storageService,application, request);
   RelyingPartyConfigurationManager rpConfigMngr = HttpServletHelper.getRelyingPartyConfigurationManager(application);
   EntityDescriptor metadata = HttpServletHelper.getRelyingPartyMetadata(loginContext.getRelyingPartyId(), rpConfigMngr);
   
   String organization = "";
   if (metadata.getOrganization() != null && metadata.getOrganization().getDisplayNames() != null){
     String localizedOrganizationDisplayName = null;
     String localizedOrganizationURL = null;

     // try to find localized name
     Locale locale = (Locale)request.getAttribute("locale");
     if (locale != null) {
       for (OrganizationDisplayName element : metadata.getOrganization().getDisplayNames()) {
         if (StringUtils.equals(element.getName().getLanguage(), locale.getLanguage())) {
           localizedOrganizationDisplayName = element.getName().getLocalString();
           break;
         }
       }
       for (OrganizationURL element : metadata.getOrganization().getURLs()) {
         if (StringUtils.equals(element.getURL().getLanguage(), locale.getLanguage())) {
           localizedOrganizationURL = element.getURL().getLocalString();
           break;
         }
       }
     }

     // fallback values if matching localization not available
     if (localizedOrganizationDisplayName == null && metadata.getOrganization().getDisplayNames().get(0) != null){
         localizedOrganizationDisplayName = metadata.getOrganization().getDisplayNames().get(0).getName().getLocalString();
     }
     if (localizedOrganizationURL == null && metadata.getOrganization().getURLs().get(0) != null){
       localizedOrganizationURL = metadata.getOrganization().getURLs().get(0).getURL().getLocalString();
     }

     if (localizedOrganizationDisplayName != null){
       if (localizedOrganizationURL != null) {
         organization += "<a href='" + localizedOrganizationURL + "' target='_blank'>";
         organization += localizedOrganizationDisplayName;
         organization += "</a>";
       } else {
         organization += "<strong>";
         organization += localizedOrganizationDisplayName;
         organization += "</strong>";
       }
     }
   }

/*
   if (metadata.getOrganization() != null && metadata.getOrganization().getDisplayNames().get(0) != null){
      organization += " of ";
      if (metadata.getOrganization().getURLs() != null){
         organization += "<a href='" + metadata.getOrganization().getURLs().get(0).getURL().getLocalString() + "' target='_blank'>";
         organization += metadata.getOrganization().getDisplayNames().get(0).getName().getLocalString();
         organization += "</a>";
      } else {
        organization += "<strong>";
        organization += metadata.getOrganization().getDisplayNames().get(0).getName().getLocalString();
        organization += "</strong>";
      }
   }
*/

%>

<%@ page contentType="text/html; charset=UTF-8" %>
<% String THEME_DIR = "/default"; %>

<!DOCTYPE html>
<html lang="en">
    <head>
        <!--FORMAT-->
        <fmt:setLocale value="${locale}"/>
        <fmt:setBundle basename="${bundle}"/>

        <!--META TAGS-->
        <meta http-equiv="Content-Type" content="text/html, charset=utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">

        <!--TITLE-->
        <title><fmt:message key="title"/></title>

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