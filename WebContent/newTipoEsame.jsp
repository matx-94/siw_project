<%@ page language="java" contentType="text/html; charset=US-ASCII" pageEncoding="US-ASCII"%>
<%@ taglib prefix="f"  uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h"  uri="http://java.sun.com/jsf/html"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
<title>New TypeExam</title>
</head>
<body>
<f:view>
<h:form>
    <div>Nome: <h:inputText value="#{tipoEsameController.nome}" 
                     required="true"
                     requiredMessage="Nome is mandatory"
                     id="nome"/> <h:message for="nome" />
    </div>              
    <div>Descrizione: <h:inputTextarea value="#{tipoEsameController.descrizione}" 
    				required="false" 
    				cols="20" 
    				rows="5" /> 
	</div>
    <div>Prezzo: <h:inputText value="#{tipoEsameController.prezzo}" 
                     required="true"
                     requiredMessage="Prezzo is mandatory"
                     id="prezzo"/> <h:message for="prezzo" />
	</div>
	<div>Code: <h:inputText value="#{tipoEsameController.code}" 
                     required="true"
                     requiredMessage="Code is mandatory"
                     id="code"/> <h:message for="code" />
	</div>
	<div>CreationTime: <h:inputText value="#{tipoEsameController.creationTime}" 
                     required="true"
                     requiredMessage="CreationTime is mandatory"
                     id="creationTime"/> <h:message for="creationTime" />
	</div>            
	<div>
		<h:commandButton value="Submit"  action="#{tipoEsameController.createTipoEsame}"/>
	</div>
	<h:commandLink action="#{tipoEesameController.listTipoEsami}"
						value="List all TypeExams" />
</h:form>
</f:view>
</body>
</html>