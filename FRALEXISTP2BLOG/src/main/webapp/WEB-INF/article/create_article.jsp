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
<title>Vos articles</title>
<link type="text/css" rel="stylesheet" href="inc/style.css" />
</head>
<body>
	<h1>Ajouter un article</h1>
	<p> >>> : <a href="/FRALEXISTP2BLOG/utilisateurs">Voir les utilisateurs</a> </p>
	<hr>
	<%@ include file="/WEB-INF/generic/message.jsp" %>
	<form action="" method="post">
		<label for="titre">Titre : </label>
		<br>
		<input type="text" id="titre" name="titre">
		<br>
		<br>
		<label for="description">Description : </label>
		<br>
		<input type="text" id="description" name="description">
		<br>
		<br>
		<label for="contenu">Contenu : </label>
		<br>
		<input type="text" id="contenu" name="contenu">
		<br>
		<br>
		<label for="auteur">Auteur : </label>
		<br>
		<select name="auteur">
			<%
				List<Utilisateur> auteurs = (List<Utilisateur>) request.getAttribute("auteurs");
				for (Utilisateur auteur: auteurs) {
					out.println("<option value=\""+ auteur.getEmail() +"\">"+auteur.getNom()+" "+ auteur.getPrenom()+"</option>");
				}
			%>
		</select>
		<br>
		<label for="categorie">Categorie : </label>
		<br>
		<select value="null" name="auteur"> </select>
			<option"> Null - <a href="/FRALEXISTP2BLOG/categories"> Crée une Catégorie </a> </option>
		<br>
		<input type="submit" value="Ajouter l'article">
	</form>
	<hr>
	<br>
	<br>
	<h2>Voici la liste de vos articles : </h2>
	<ul>
		<%
			List<Article> articles = (List<Article>) request.getAttribute("articles");
			for (Article article : articles) {
				out.println("<li>");
				out.println("<p> Titre : "+ article.getTitre() +"</p>");
				out.println("<p> Description :"+ article.getDescription() +"</p>");
				out.println("<p> Contenu : "+ article.getContenu() + "</p>");
				out.println("<p> Auteur : "+article.getAuteur().getNom()+" "+article.getAuteur().getPrenom()+" | "+article.getAuteur().getEmail()+"</p>");
				out.println("</li>");
			}
		%>
	</ul>
</body>
</html>