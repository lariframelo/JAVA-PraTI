<%@ taglib tagdir="/WEB-INF/tags" prefix="ex" %>

<!DOCTYPE html>
<html>
<head>
	<title>Exemplo 04</title>
</head>
<body>

	<h1> Exemplo 4 - Mais "User TAGs" </h1>
	
	Resultado do processamento da TAG "hoje": <br />
	<ex:hoje />
	
	<br /><br />
	
	Resultado do processamento da TAG "hojeAt": <br />
	<ex:hojeAt lang="de" />
	
	<br /><br />
	
	<ex:quadro title="Avisos">
		Aqui qq coisa que ficar� formatada
		pela TAG j� definida no arquivo
		"quadro.tag"
	</ex:quadro>

</body>
</html>

