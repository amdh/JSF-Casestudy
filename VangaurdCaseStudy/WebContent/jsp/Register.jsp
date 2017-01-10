<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="f"  uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h"  uri="http://java.sun.com/jsf/html"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
</head>
<body>
<f:view>

<h:outputLabel  value="First Name"></h:outputLabel>
<h:inputText value="#{register.firstname}"></h:inputText>	

<h:outputLabel  value="Last Name"></h:outputLabel>
<h:inputText value="#{register.lastname}"></h:inputText>	

<h:outputLabel  value="Email"></h:outputLabel>
<h:inputText value="#{register.email}"></h:inputText>

<h:outputLabel  value="Gender"></h:outputLabel>
<h:selectOneRadio></h:selectOneRadio>

<h:outputLabel  value="Address:'"></h:outputLabel>
<h:outputLabel  value="Street1"></h:outputLabel>
<h:inputText value="#{register.street1}"></h:inputText>

<h:outputLabel  value="Street2"></h:outputLabel>
<h:inputText value="#{register.street2}"></h:inputText>

<h:outputLabel  value="State"></h:outputLabel>
<h:selectOneListbox ></h:selectOneListbox>

<h:outputLabel  value="Country"></h:outputLabel>
<h:inputText value="#{register.country}"></h:inputText>

<h:outputLabel  value="Phone No"></h:outputLabel>
<h:inputText value="#{register.phoneno}"></h:inputText>

<h:outputLabel  value="Date of Birth"></h:outputLabel>
<h:inputText value="#{register.dob}"></h:inputText>
  
<h:commandButton>Submit</h:commandButton>

</f:view>
</body>
</html> 