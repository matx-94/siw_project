<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="f"  uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h"  uri="http://java.sun.com/jsf/html"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>New Patient</title>
</head>
<body>
<f:view>
<h:form>
    <div>UserName: <h:inputText value="#{pazienteController.userName}" 
                     required="true"
                     requiredMessage="UserName is mandatory"
                     id="userName"/> <h:message for="userName" />
    </div>
    <div>FirstName: <h:inputText value="#{pazienteController.firstName}" 
                     required="true"
                     requiredMessage="FirstName is mandatory"
                     id="firstName"/> <h:message for="firstName" />
	</div>
    <div>LastName: <h:inputText value="#{pazienteController.lastName}" 
                     required="true"
                     requiredMessage="LastName is mandatory"
                     id="lastName"/> <h:message for="lastName" />
	</div>
    <div>Password: <h:inputText value="#{pazienteController.password}" 
                     required="true"
                     requiredMessage="Password is mandatory"
                     id="password"/> <h:message for="password" />
	</div>
	<div>
		<h:commandButton value="Submit"  action="#{pazienteController.createPaziente}"/>
	</div>
	<h:commandLink action="#{pazienteController.listPazienti}"
						value="List all Patients" />
</h:form>
</f:view>
</body>
</html>