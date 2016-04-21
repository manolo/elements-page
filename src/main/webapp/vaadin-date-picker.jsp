<%@ page import="com.liferay.portal.util.PortalUtil" %>
<%@ page import="com.vaadin.elements.GitHubRelease" %>
<%@ page import="com.vaadin.elements.Releases" %>
<%@ page import="java.util.List" %>
<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="portlet" %>

<portlet:defineObjects/>

<%PortalUtil.setPageTitle("Material design datepicker for Polymer | Vaadin Elements", request);%>

<!-- Imports -->
<jsp:include page="imports.jsp"/>

<!-- Imports end -->


<!-- Hero section start -->

<div class="w-wallpaper-container elements-hero-mini">
  <div class="w-wallpaper"></div>
  <div class="elements-hero-title row-fluid">
    <div class="span9"><h5 class="helvetica-light"><a href="/elements">Vaadin Elements</a></h5>
    </div>
    <div class="span3 hidden-phone">
      <a href="https://www.polymer-project.org"
         class="polymer-tag polymer-tag-white polymer-tag-inline">Based on Polymer</a>
    </div>
  </div>
  <h1 class="helvetica-light">&lt;vaadin-date-picker&gt; <span><%=Releases.getLatestVersionNumber("vaadin-date-picker", "1.0.0-beta1")%></span></h1>
  <a class="back-link" href="/elements">&laquo; Back to listing</a>
</div>

<!-- Hero section end -->

<!-- Intro section start -->

<div class="w-wallpaper-container elements-intro">
  <div class="w-wallpaper"></div>
  <div class="row-fluid">
    <div class="span7">
      <p class="lead helvetica-light">Vaadin DatePicker allows you to select a date from a dropdown
        calendar.</p>
    </div>
    <div class="span5">
      <h4>Install</h4>
      <div class="elements-install">
        <code>bower install --save vaadin-date-picker</code>
      </div>
      <a href="https://vaadin.com/docs/-/part/elements/vaadin-date-picker/vaadin-date-picker-overview.html"
         class="w-button blue">Documentation</a>
      <a href="https://github.com/vaadin/vaadin-date-picker"
         class="w-button blue github">View on GitHub</a>
    </div>
  </div>
</div>


<!-- Info section start -->
<div class="w-wallpaper-container zebra">
  <div class="w-wallpaper">&nbsp;</div>

  <div class="elements-section">
    <style>
      vaadin-date-picker {
        max-width: 300px;
      }

      vaadin-date-picker input[readonly] {
        background: transparent !important;
      }

      /* Hacks needed for Liferay*/
      vaadin-date-picker input[type='text'],
      vaadin-date-picker input[type='text']:focus,
      vaadin-date-picker input[type='text']:active {
        border: none !important;
        box-shadow: none !important;
        background-color: transparent !important;
        padding: 0;
      }

      vaadin-date-picker input[readonly] {
        cursor: inherit !important;
      }
    </style>
    <h4>Features</h4>
    <div class="row-fluid">
      <div class="span6">
        <ul>
          <li>Scrollable calendar view</li>
          <li>Desktop and mobile support</li>

        </ul>
      </div>
      <div class="span6">
        <ul>
          <li>Two way data binding</li>
          <li>
            Material Design inspired styles to fit in with <a
              href="https://elements.polymer-project.org/browse?package=paper-elements">Paper
            Elements</a>
          </li>
        </ul>
      </div>
    </div>
  </div>
</div>

<!-- Info section end -->

<!-- Info section end -->
<% List<GitHubRelease> latestReleases = Releases.getLatestReleases("vaadin-date-picker");
  if (latestReleases != null && !latestReleases.isEmpty()) {
%>
<div class="elements-section">
  <h4>Latest releases</h4>
  <%--A small part of me died for writing this--%>
  <% for (GitHubRelease release : latestReleases) {%>
  <div class="row-fluid">
    <span class="span9"><a href="<%=release.htmlUrl%>"><%=release.name%>
    </a></span>
    <time is="relative-time" datetime="<%=release.publishedAt%>" class="span3"></time>
  </div>
  <%}%>
</div>
<%}%>
<!-- Demo section start -->

<!-- Demo section start -->
<div class="w-wallpaper-container zebra">
  <div class="w-wallpaper">&nbsp;</div>

  <div class="elements-section">

    <h4>Examples</h4>

    <h5>Simple usage</h5>
    <demo-viewer>
      <demo-source name="Polymer"
                   url="<%=request.getContextPath()%>/examples/core/date-picker/polymer.html"></demo-source>
      <demo-source name="Angular 2"
                   url="<%=request.getContextPath()%>/examples/core/date-picker/angular2.ts"></demo-source>

      <vaadin-date-picker label="Pick a date"></vaadin-date-picker>
      <vaadin-date-picker label="Birthday" value="2000-01-01"></vaadin-date-picker>
    </demo-viewer>


  </div>
</div>

<jsp:include page="suggestion-box.jsp"/>

<jsp:include page="bottom-actions.jsp"/>
