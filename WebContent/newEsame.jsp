<%@ page language="java" contentType="text/html; charset=US-ASCII" pageEncoding="US-ASCII"%>
<%@ taglib prefix="f"  uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h"  uri="http://java.sun.com/jsf/html"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
<title>New Exam</title>
</head>
<body>
<f:view>
<h:form>
    <div>Code: <h:inputText value="#{esameController.code}" 
                     required="true"
                     requiredMessage="Code is mandatory"
                     id="code"/> <h:message for="code" />
	</div>
    <div>Medico: <h:inputText value="#{esameController.medico}" 
                     required="true"
                     requiredMessage="Medico is mandatory"
                     id="medico"/> <h:message for="medico" />
	</div>
    <div>Paziente: <h:inputText value="#{esameController.paziente}" 
                     required="true"
                     requiredMessage="Paziente is mandatory"
                     id="paziente"/> <h:message for="paziente" />
	</div>
	<div>TipoEsame: <h:inputText value="#{esameController.tipoEsame}" 
                     required="true"
                     requiredMessage="TipoEsame is mandatory"
                     id="tipoEsame"/> <h:message for="tipoEsame" />
	</div>
	<div>CreationTime: <h:inputText value="#{esameController.creationTime}" 
                     required="true"
                     requiredMessage="CreationTime is mandatory"
                     id="creationTime"/> <h:message for="creationTime" />
	</div>            
	<div>
		<h:commandButton value="Submit"  action="#{esameController.createEsame}"/>
	</div>
	<h:commandLink action="#{esameController.listEsami}"
						value="List all Exams" />
</h:form>
</f:view>
</body>
</html>