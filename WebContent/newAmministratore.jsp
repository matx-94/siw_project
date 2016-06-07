<%@ page language="java" contentType="text/html; charset=US-ASCII" pageEncoding="US-ASCII"%>
<%@ taglib prefix="f"  uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h"  uri="http://java.sun.com/jsf/html"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
<title>New Administrator</title>
</head>
<body>
<f:view>
<h:form>
    <div>UserName: <h:inputText value="#{amministratoreController.userName}" 
                     required="true"
                     requiredMessage="UserName is mandatory"
                     id="userName"/> <h:message for="userName" />
	</div>
    <div>Password: <h:inputText value="#{amministratoreController.password}" 
                     required="true"
                     requiredMessage="Password is mandatory"
                     id="password"/> <h:message for="password" />
	</div>
	<div>
		<h:commandButton value="Submit"  action="#{amministratoreController.createAmministratore}"/>
	</div>
	<h:commandLink action="#{amministratoreController.listAmministratori}"
						value="List all Administrators" />
</h:form>
</f:view>
</body>
</html>