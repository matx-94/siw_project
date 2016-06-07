<%@ taglib prefix="f"  uri="http://java.sun.com/jsf/core"%>
<!DOCTYPE html>
<html>
<head>
<title>Esame</title>
</head>
<body>
<f:view>
<h1>Details</h1>
<div>Code: ${esameController.esame.code}</div>
<div>CreationTime: ${esameController.esame.creationTime}</div>
<div>Medico: ${esameController.esame.medico}</div>
<div>Paziente: ${esameController.esame.paziente}</div>
<div>TipoEsame: ${esameController.esame.tipoEsame}</div>
</f:view>
</body>
</html>