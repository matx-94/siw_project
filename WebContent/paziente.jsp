<%@ taglib prefix="f"  uri="http://java.sun.com/jsf/core"%>
<!DOCTYPE html>
<html>
<head>
<title>Paziente</title>
</head>
<body>
<f:view>
<h1>Details</h1>
<div>FirstName: ${pazienteController.paziente.firstName}</div>
<div>LastName: ${pazienteController.paziente.lastName}</div>
<div>UserName: ${pazienteController.paziente.userName}</div>
<div>Password: ${pazienteController.paziente.password}</div>
</f:view>
</body>
</html>