<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h:form id="form">
    <p:growl id="msgs" showDetail="true" />
 
    <h:panelGrid columns="2" cellpadding="5">
        <p:outputLabel for="inline" value="Inline:" />
        <p:calendar id="inline" value="#{calendarView.date1}" mode="inline" />
 
        <p:outputLabel for="popup" value="Popup:" />
        <p:calendar id="popup" value="#{calendarView.date2}" />
 
        <p:outputLabel for="button" value="Button:" />
        <p:calendar id="button" value="#{calendarView.date3}" showOn="button" />
 
        <p:outputLabel for="event" value="Select Event:" />
        <p:calendar id="event" value="#{calendarView.date4}">
            <p:ajax event="dateSelect" listener="#{calendarView.onDateSelect}" update="msgs" />
        </p:calendar>
 
        <p:outputLabel for="german" value="German:" />
        <p:calendar id="german" value="#{calendarView.date5}" locale="de" navigator="true" pattern="yyyy-MMM-dd" />
 
        <p:outputLabel for="restricted" value="Restricted:" />
        <p:calendar id="restricted" value="#{calendarView.date6}" mindate="4/1/14" maxdate="7/1/14" />
 
        <p:outputLabel for="multi" value="Multiple:" />
        <p:calendar id="multi" value="#{calendarView.date7}" pages="3" />
 
        <p:outputLabel for="effect" value="Effect:" />
        <p:calendar id="effect" value="#{calendarView.date8}" effect="fold" />
 
        <p:outputLabel for="mask" value="Mask:" />
        <p:calendar id="mask" value="#{calendarView.date9}" pattern="dd-MM-yyyy" mask="true" />
 
        <p:outputLabel for="datetime" value="Datetime:" />
        <p:calendar id="datetime" value="#{calendarView.date10}" pattern="MM/dd/yyyy HH:mm:ss" />
 
        <p:outputLabel for="time" value="Time:" />
        <p:calendar id="time" value="#{calendarView.date11}" pattern="HH:mm" timeOnly="true"  />
    </h:panelGrid>
 
    <p:commandButton value="Submit" update="msgs" actionListener="#{calendarView.click}" icon="ui-icon-check" />
 
    <p:dialog modal="true" resizable="false" header="Values" widgetVar="dlg" showEffect="fold">
        <p:panelGrid id="display" columns="2" columnClasses="label,value">
            <h:outputText value="Inline:" />
            <h:outputText value="#{calendarView.date1}">
                <f:convertDateTime pattern="MM/dd/yyyy" />
            </h:outputText>
 
            <h:outputText value="Popup:" />
            <h:outputText value="#{calendarView.date2}">
                <f:convertDateTime pattern="MM/dd/yyyy" />
            </h:outputText>
 
            <h:outputText value="Button:" />
            <h:outputText value="#{calendarView.date3}">
                <f:convertDateTime pattern="MM/dd/yyyy" />
            </h:outputText>
 
            <h:outputText value="Event:" />
            <h:outputText value="#{calendarView.date4}">
                <f:convertDateTime pattern="MM/dd/yyyy" />
            </h:outputText>
 
            <h:outputText value="German:" />
            <h:outputText value="#{calendarView.date5}">
                <f:convertDateTime pattern="MM/dd/yyyy" />
            </h:outputText>
 
            <h:outputText value="Restricted:" />
            <h:outputText value="#{calendarView.date6}">
                <f:convertDateTime pattern="MM/dd/yyyy" />
            </h:outputText>
 
            <h:outputText value="Multiple:" />
            <h:outputText value="#{calendarView.date7}">
                <f:convertDateTime pattern="MM/dd/yyyy" />
            </h:outputText>
 
            <h:outputText value="Effect:" />
            <h:outputText value="#{calendarView.date8}">
                <f:convertDateTime pattern="MM/dd/yyyy" />
            </h:outputText>
 
            <h:outputText value="Mask:" />
            <h:outputText value="#{calendarView.date9}">
                <f:convertDateTime pattern="MM/dd/yyyy" />
            </h:outputText>
 
            <h:outputText value="Datetime:" />
            <h:outputText value="#{calendarView.date10}">
                <f:convertDateTime pattern="MM/dd/yyyy HH:mm:ss" />
            </h:outputText>
 
            <h:outputText value="Time:" />
            <h:outputText value="#{calendarView.date11}">
                <f:convertDateTime pattern="HH:mm" />
            </h:outputText>
        </p:panelGrid>
    </p:dialog>
</h:form>

</body>
</html>