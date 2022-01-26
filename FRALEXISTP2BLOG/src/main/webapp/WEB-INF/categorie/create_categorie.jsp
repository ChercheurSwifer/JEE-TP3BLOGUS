<%@page import="FRALEXISTP2BLOG.beans.Utilisateur"%>
<%@page import="FRALEXISTP2BLOG.beans.Article"%>
<%@page import="FRALEXISTP2BLOG.beans.Categorie"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Vos catégories</title>
<link type="text/css" rel="stylesheet" href="inc/style.css" />
</head>
<body>
	<h1>Ajouter une catégorie</h1>
	<a href="/FRALEXISTP2BLOG/utilisateurs">Voir les utilisateurs</a>
	<br>
	<a href="/FRALEXISTP2BLOG/articles">Ajouter un article</a>
	<br>
	<br>
	<%@ include file="/WEB-INF/generic/message.jsp" %>
	<form action="" method="post">
		<label for="titre">Titre : </label>
		<br>
		<input type="text" id="titre" name="titre">
		<br>
		<br>
		<input type="submit" value="Ajouter la catégorie">
	</form>
	<br>
	<br>
	<h2>Voici la liste des catégories : </h2>
	<ul>
		<%
			List<Categorie> categories = (List<Categorie>) request.getAttribute("categories");
			for (Categorie categorie : categories) {
				out.println("<li>");
				out.println("<p> Titre : "+ categorie.getTitre() +"</p>");
				out.println("</li>");
			}
		%>
	</ul>
</body>
</html>