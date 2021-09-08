<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
	<title>Insert title here</title>
</head>
<body>

	<h1> Exemplo 3 - JSTL </h1>
	
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
	
	� menos comum usar as tags de acesso a dados com JSTL. <br />
    Normalmente usamos classes DAO ou frameworks para isso
    e n�o diretamente pelo JSP.<br />
    De qq maneira, nada impede de fazer TODO um projeto usando
    somente JSTL.
    <br /><br />
	
	<c:catch var="ex">
	
	    <%-- tag que faz a conex�o com o BD e deixa uma vari�vel com a refer�ncia --%>
	    <sql:setDataSource driver="com.mysql.jdbc.Driver"
	                       user="root"
	                       password=""
	                       url="jdbc:mysql://localhost/alfalive"
	                       var="con" />
	
	    <%-- tag que executa uma instru��o sql e obtem o resultado --%>
	    <sql:query var="res" dataSource="${con}">
	        select * from curso
	    </sql:query>
	
	    <%-- tags para listar o resultado obtido na consulta --%>
	    <c:forEach items="${res.rows}" var="linha">
	        <strong>${linha.nome}</strong> <br />
	        ${linha.descricao}
	        <br /><br />
	    </c:forEach>
	    
    </c:catch>

    <c:if test="${ex != null}">
        Houve algum bug na execu��o da lista de produtos <br />
        ${ex}
    </c:if>

</body>
</html>