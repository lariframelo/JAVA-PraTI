<%@ page import="java.io.*" %>
<%
//arquivo s� com c�digo JSP para grava��o dos dados

if (request.getParameter("sub") != null) 
{
	//pegar o nome, email e texto
	String nom = request.getParameter("nom");
	String ema = request.getParameter("ema");
	String txt = request.getParameter("txt");
	
	String linha = nom + " # " + ema + " # " + txt;
	
	String dir = request.getRealPath("/");
	String arq = dir + "/projeto02/visitas/txt/dados.txt";
	FileWriter fw = new FileWriter(arq, true);
	BufferedWriter bw = new BufferedWriter(fw);
	PrintWriter pw = new PrintWriter(bw);
	pw.println(linha); //o m�todo println j� coloca "\n" no final
	pw.close();
	bw.close();
	fw.close();
}
	
//direcionar para a p�gina de visualiza��o
response.sendRedirect("livro_view.jsp");
%>