<%@ include file="header.jsp" %>
<body class="page terms-page">
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
                                    <h2>I. INTRODUCTION</h2>
                                    <p>The Common Identity and Trust collaborative ("CommIT") was formed to make it easier and safer for students to apply to college and for organizations like universities and testing agencies to support this simpler application process. The services offered by CommIT are subject to these Terms of Use. If you are interested in registering for CommIT service, you must acknowledge during the registration process that you have read and agree to these CommIT Terms of Use.</p>

                                    <h2>II. PRIVACY POLICY</h2>
                                    <p>The CommIT Privacy Policy can be found at <a href="http://login.commonidtrust.org/privacy.html">http://login.commonidtrust.org/privacy.html</a>. If you are interested in registering for CommIT service, you must also acknowledge during the registration process that you have read and agree to the CommIT Privacy Policy.</p>

                                    <h2>III. AGE RESTRICTIONS</h2>
                                    <p>
                                        Registration for the CommIT service is restricted to individuals who are:
                                        <ol>
                                            <li>18 years of age or older,</li>
                                            <li>emancipated minors, or</li>
                                            <li>those who possess legal parental or guardian consent and are fully able and competent to enter into the terms, conditions, obligations, and representations herein.</li>
                                        </ol>
                                    </p>
                                    <p>By registering for the CommIT service, you hereby represent that you meet one of the criteria set forth above.</p>
                                    <p>The services offered by CommIT and the CommIT website are not intended for or directed toward children under the age of 13. Children under 13 years of age will be restricted from registering for the CommIT service.</p>

                                    <h2>IV. COPYRIGHT</h2>
                                    <p>
                                        All information contained in this site is copyright protected. The copyrights are owned by <a href="http://www.internet2.edu/" target="_blank">Internet2</a> or the original creator of the material. However, you are free to view, copy, print and distribute <a href="http://www.internet2.edu/" target="_blank">Internet2</a> material from this site, as long as:
                                        <ol>
                                            <li>The material is for informational use only, </li>
                                            <li>The material is used for non-commercial purposes only, and</li>
                                            <li>Use includes proper attribution and copyright notice of the material´s creator.</li>
                                        </ol>
                                    </p>

                                    <h2>V. TRADEMARKS</h2>
                                    <p>The <a href="http://www.internet2.edu/" target="_blank">Internet2</a> and <a href="http://www.pesc.org/" target="_blank">PESC</a> names and logos are registered trademarks. You may not use these without the written permission of <a href="http://www.internet2.edu/" target="_blank">Internet2</a> or <a href="http://www.pesc.org/" target="_blank">PESC</a>. The <a href="http://www.internet2.edu/" target="_blank">Internet2</a> trademark may not be used in connection with any product or service or in any manner that is likely to cause confusion or be misleading. All other trademarks or service marks that appear on the <a href="http://www.internet2.edu/" target="_blank">Internet2</a> web space are the property of their respective owners.</p>

                                    <h2>VI. NO WARRANTY</h2>
                                    <p>While CommIT attempts to provide accurate information on this site, it assumes no responsibility for accuracy. CommIT may change the information on the site at any time without notice.</p>
                                    <p>Material on this site is provided "as is" and does not constitute a warranty of any kind, either express or implied. CommIT disclaims all warranties, expressed or implied. This includes, but is not limited to, implied warranties of merchantability, fitness for a particular purpose, and non-infringement. It also includes any expressed or implied warranties arising from any course of dealing, usage or trade practice.</p>

                                    <h2>VII. LIMITATION OF LIABILITY</h2>
                                    <p>CommIT is not liable for any direct, indirect, special, incidental or consequential damages arising out of the use - or the inability to use - the material on this site. This includes, but is not limited to, the loss of data or loss of profit, even if CommIT was advised of the possibilities of such damages.</p>

                                    <h2>VIII. YOUR POSTED INFORMATION</h2>
                                    <p>You are prohibited from posting or transmitting any unlawful, threatening, obscene, libelous, or otherwise offensive material.</p>

                                    <h2>IX. YOUR SUBMISSION</h2>
                                    <p>Any personal information that you submit to CommIT will be treated in accordance with our Privacy Policy, located at <a href="http://login.commonidtrust.org/privacy.html" target="_blank">http://login.commonidtrust.org/privacy.html</a>. As set forth in our Privacy Policy, by using your CommIT ID to initiate an admissions application or other services supported by CommIT participating organizations, you are granting consent for your personal information to be shared with that organization. The provision of CommIT services may include the transfer of data across international boundaries.</p>

                                    <h2>X. EXPORT OF INFORMATION</h2>
                                    <p>The United States Export Controls laws prohibit the export of certain technical data and software to certain territories. No content from this site may be downloaded or otherwise exported in violation of United States law.   </p>

                                    <h2>XI. QUESTIONS</h2>
                                    <p>If you have any questions about these terms, contact <a href="mailto:commit@internet2.edu">commit@internet2.edu</a>.</p>

                                    <hr>

                                    <div class="row-fluid">
                                        <div class="span10 clearfix">
                                            <label for="accept" class="checkbox pull-left">
                                                <input id="accept" type="checkbox" name="accept" value="true">
                                                <fmt:message key="accept"/>
                                            </label>
                                        </div>
                                        <div class="span2 clearfix">
                                            <input type="submit" name="confirm" class="btn btn-primary cm-btn cm-btn-primary pull-right" value="<fmt:message key="confirm"/>" />
                                        </div>
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