<%@ taglib prefix="f"  uri="http://java.sun.com/jsf/core"%>
<!DOCTYPE html>
<html>
<head>
<title>TipoEsame</title>
</head>
<body>
<f:view>
<h1>${tipoEsameController.tipoEsame.nome}</h1>
<h2>Details</h2>
<div>Code: ${tipoEsameController.tipoEsame.code}</div>
<div>Descrizione: ${tipoEsameController.tipoEsame.descrizione}</div>
<div>Prezzo: ${tipoEsameController.tipoEsame.prezzo}</div>
<div>CreationTime: ${tipoEsameController.tipoEsame.creationTime}</div>
</f:view>
</body>
</html>