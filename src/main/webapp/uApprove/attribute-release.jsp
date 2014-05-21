<%@ include file="header.jsp" %>
<body class="page attributes-page">
    <header class="header-module">
        <div class="container-fluid">
            <div class="row-fluid">
                <div class="span5">
                    <%@ include file="logo.jsp" %>
                </div>
                <div class="span7">
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
                                <h1><fmt:message key="title"/></h1>
                            </div>
                            <div class="content">
                                <form method="post">
                                    <!--Page Header-->
                                    <div class="page-header">
                                        <h2>
                                            <span><idpui:serviceName/> <fmt:message key="of"/> <%= organization %></span>
                                            <p><small><idpui:serviceDescription/></small></p>
                                        </h2>
                                    </div>

                                    <!--Attribute Table-->
                                    <table class="table table-striped table-bordered table-hover">
                                        <thead>
                                            <tr>
                                                <th colspan="2">
                                                    <fmt:message key="attributesHeader"/>
                                                </th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <c:forEach var="attribute" items="${attributes}" varStatus="status">
                                                <tr>
                                                    <td title="${attribute.description}">
                                                        ${attribute.name}
                                                    </td>
                                                    <td>
                                                        <c:forEach var="value" items="${attribute.values}">
                                                            <strong>${fn:replace(value, '$', '<br />')}</strong> <br />
                                                        </c:forEach>
                                                    </td>
                                                </tr>
                                           </c:forEach>
                                       </tbody>
                                    </table>

                                    <!--Confirmation-->
                                    <p>
                                        <fmt:message key="confirmationQuestion"/>
                                    </p>

                                    <!--Global Consent-->
                                    <c:if test="${allowGeneralConsent}">
                                        <p>
                                            <a href="javascript: void(0)" onclick="document.getElementById('generalConsentDiv').style.display='block'; document.getElementById('triangle').src='images/triangle2.png'; return false;">
                                                <img alt=">" src="images/triangle1.png" id="triangle" style="padding-right: 6px;"/>
                                                <fmt:message key="dontShowPageAgain"/>
                                            </a>
                                        </p>
                                        <div id="generalConsentDiv" class="well hide">
                                            <h3><fmt:message key="globalDataReleaseConsentTitle"/></h3>

                                            <label for="generalConsent" class="checkbox">
                                                <input type="checkbox" name="generalConsent" value="true">
                                                <fmt:message key="globalDataReleaseConsentCheckbox"/>
                                            </label>

                                            <ul>
                                                <li><fmt:message key="globalDataReleaseConsentItem1"><fmt:param><idpui:serviceName/></fmt:param></fmt:message></li>
                                                <li><fmt:message key="globalDataReleaseConsentItem2"/></li>
                                                <li><fmt:message key="globalDataReleaseConsentItem3"/></li>
                                            </ul>
                                        </div>
                                    </c:if>

                                    <!--Form Controls-->
                                    <div class="controls text-center">
                                        <input type="reset" class="btn btn-primary cm-btn cm-btn-primary" name="noconfirm" value="<fmt:message key="reject"/>" onclick="alert('<fmt:message key="rejectMessage"/>')" />
                                        <input type="submit" class="btn btn-primary cm-btn cm-btn-primary" name="confirm" value="<fmt:message key="accept"/>" />
                                    </div>
                                </form>
                            </div>
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
                    <%@ include file="links.jsp" %>
                </div>

                <div class="span3">
                    <%@ include file="copyright.jsp" %>
                </div>
            </div>
        </div>
    </footer>
    <%@ include file="modal.jsp" %>
    <%@ include file="scripts.jsp" %>
</body>
<%@ include file="footer.jsp" %>