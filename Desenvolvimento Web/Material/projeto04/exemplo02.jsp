<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
	<title>Insert title here</title>
</head>
<body>
	
	<h1> Exemplo 2 - JSTL </h1>
	
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

    Formata��o de um objeto do tipo Date 
    conforme um determinado padr�o <br />
    <c:set var="hoje" value="<%= new java.util.Date() %>" />
    <fmt:formatDate value="${hoje}" pattern="dd/MM/yyyy" />
    <br /><br />

    Formata��o de um n�mero float (en) 
    para o padr�o moeda (pt) <br />
    <c:set var="valor" value="123456.7" />
    <fmt:formatNumber value="${valor}" pattern="#,##0.00#" />
	
	
</body>
</html>