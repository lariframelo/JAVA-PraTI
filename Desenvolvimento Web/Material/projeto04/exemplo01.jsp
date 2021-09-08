<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
	<title>Insert title here</title>
</head>
<body>

	<h1> Exemplo 1 - JSTL </h1>
	
	<%-- Expression Language --%>
	Valor do par�metro (get ou post): ${param.nome}
	<br /><br />
	
	<%-- declara��o da TagLib, geralmente l� no in�cio da p�gina --%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	
	<%-- tag de sa�da para o navegador --%>
	<c:out value="Texto da TAG JSTL" />
	<br /><br />
	
	<%-- tag para criar uma vari�vel e definir um valor --%>
	<c:set var="idade" value="12" />
	
	<%-- Sele��o, usando Expression Language (EL) --%>
	<c:if test="${idade > 10}">
		Categoria B�sica <strong>Iniciante</strong>
	</c:if>
	<br /><br />
	
	<%-- Escolha com m�ltiplas op��es 
		 (um switch/case misturado com if/else) --%>
	<c:choose>
		<c:when test="${idade>5 && idade<=10}">
			Categoria Infantil
		</c:when>
		<c:when test="${idade>10 && idade<=20}">
			Categoria Juvenil
		</c:when>
		<c:when test="${idade>20 && idade<=40}">
			Categoria Adulto
		</c:when>
		<c:otherwise>
			Categoria Geral
		</c:otherwise>
	</c:choose>
	<br /><br />
	
	
</body>
</html>