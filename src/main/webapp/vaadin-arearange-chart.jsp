<%@ page import="com.liferay.portal.util.PortalUtil" %>
<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="portlet" %>

<portlet:defineObjects/>
<%PortalUtil.setPageTitle("Area Range Chart for Polymer, Angular 2, HTML5 | Vaadin Elements", request);%>
<!-- Imports -->
<jsp:include page="imports.jsp"/>

<!-- Imports end -->

<!-- Hero section start -->

<div class="w-wallpaper-container elements-hero-mini">
  <div class="w-wallpaper">&nbsp;</div>

  <div class="elements-hero-title row-fluid">
    <div class="span9">
      <h5 class="helvetica-light"><a href="/elements">Vaadin Elements</a></h5>
    </div>
    <div class="span3 hidden-phone">
      <a href="https://www.polymer-project.org"
         class="polymer-tag polymer-tag-white polymer-tag-inline">Based on Polymer</a>
    </div>
  </div>

  <h1 class="helvetica-light">&lt;vaadin-arearange-chart&gt;
  </h1>
  <a class="back-link" href="/elements">&laquo; Back to listing</a>
</div>

<!-- Hero section end -->

<!-- Intro section start -->

<div class="w-wallpaper-container elements-intro">
  <div class="w-wallpaper">&nbsp;</div>

  <div class="row-fluid">
    <div class="span7">
      <p class="lead helvetica-light">
        An area range chart highlights the area between two line charts.
      </p>
    </div>

    <div class="span5">
      <h4>Install</h4>
      <div class="elements-install">
        <code>bower install --save vaadin-charts</code>
      </div>
      <a href="https://vaadin.com/docs/-/part/charts/webcomponents-api/charts-getting-started.html"
         class="w-button blue">Documentation</a>
    </div>
  </div>
</div>

<!-- Intro section end -->

<!-- Info section start -->
<jsp:include page="charts-features.jsp"/>


<div class="elements-section">
  <h4>Similar charts</h4>

  <div class="row-fluid">
    <div class="span6">
      <ul>
        <li>
          <a href="<portlet:renderURL><portlet:param name="jspPage" value="/vaadin-areaspline-chart.jsp" /></portlet:renderURL>">Area
            spline chart</a></li>
        <li>
          <a href="<portlet:renderURL><portlet:param name="jspPage" value="/vaadin-area-chart.jsp" /></portlet:renderURL>">Area
            chart</a></li>
        <li>
          <a href="<portlet:renderURL><portlet:param name="jspPage" value="/vaadin-areasplinerange-chart.jsp" /></portlet:renderURL>">Area
            spline range chart</a></li>
      </ul>
    </div>

    <div class="span6">
      <ul>

        <li>
          <a href="<portlet:renderURL><portlet:param name="jspPage" value="/vaadin-line-chart.jsp" /></portlet:renderURL>">Line
            Chart</a></li>
        <li>
          <a href="<portlet:renderURL><portlet:param name="jspPage" value="/vaadin-spline-chart.jsp" /></portlet:renderURL>">Spline
            Chart</a></li>
      </ul>
    </div>
  </div>
</div>

<!-- Info section end -->

<!-- Demo section start -->
<%request.setAttribute("chart", "vaadin-arearange-chart.html");%>

<template is="dom-bind">
  <div class="w-wallpaper-container zebra">
    <div class="w-wallpaper">&nbsp;</div>

    <div class="elements-section">

      <h4>Examples</h4>
      <demo-viewer selected="{{selected}}">
        <demo-source name="Polymer"
                     url="<%=request.getContextPath()%>/examples/charts/arearange/polymer.html"></demo-source>
        <demo-source name="Angular 2"
                     url="<%=request.getContextPath()%>/examples/charts/arearange/angular2.ts"></demo-source>

        <template is="dom-bind">
          <iron-ajax auto url="<%=request.getContextPath()%>/temp-variation.json" handle-as="json"
                     last-response="{{temperatureData}}"></iron-ajax>
          <vaadin-arearange-chart id="area-range">
            <chart zoom-type="x"></chart>
            <title>Temperature variation by day</title>
            <x-axis type="datetime"></x-axis>
            <y-axis>
              <title text="null"></title>
            </y-axis>
            <tooltip crosshairs="true" shared="true" value-suffix="C"></tooltip>
            <legend enabled="false"></legend>
            <data-series data="[[temperatureData]]"></data-series>
          </vaadin-arearange-chart>
        </template>
      </demo-viewer>
    </div>
  </div>
</template>

<jsp:include page="charts-links.jsp"/>
<jsp:include page="suggestion-box.jsp"/>

<jsp:include page="bottom-actions.jsp"/>
