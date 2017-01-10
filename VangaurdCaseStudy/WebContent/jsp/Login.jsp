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

<h:outputLabel  value="User Name"></h:outputLabel>
<h:inputText value="#{login.username}"></h:inputText>	

<h:outputLabel  value="Password"></h:outputLabel>
<h:inputSecret value="#{login.password}"></h:inputSecret>	

  
<h:commandButton>Login</h:commandButton>

</f:view>
</body>
</html> 