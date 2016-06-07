<%@ page language="java" contentType="text/html; charset=US-ASCII"
	pageEncoding="US-ASCII"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
<title>SIW_PROJECT</title>
</head>
<body>
	<f:view>
		<h1>SIW_PROJECT</h1>
		<ul>
			<li><a href='<c:url value="/faces/newAmministratore.jsp" />'>
			Insert a new administrator</a></li>
			<li><a href='<c:url value="/faces/newEsame.jsp" />'>
			Insert a new exam</a></li>
			<li><a href='<c:url value="/faces/newTipoEsame.jsp" />'>
			Insert a new typeExam</a></li>
			<li><a href='<c:url value="/faces/newPaziente.jsp" />'>
			Insert a new patient</a></li>
			
			<li><h:form>
					<h:commandLink action="#{amministratoreController.listAmministratori}"
						value="List all Administrators" />
				</h:form></li>
				<li><h:form>
					<h:commandLink action="#{esameController.listEsami}"
						value="List all Exams" />
				</h:form></li>
				<li><h:form>
					<h:commandLink action="#{tipoEsameController.listTipoEsami}"
						value="List all TypeExams" />
				</h:form></li>
				<li><h:form>
					<h:commandLink action="#{pazienteController.listPazienti}"
						value="List all Patients" />
				</h:form></li>
		</ul>
	</f:view>
</body>
</html>