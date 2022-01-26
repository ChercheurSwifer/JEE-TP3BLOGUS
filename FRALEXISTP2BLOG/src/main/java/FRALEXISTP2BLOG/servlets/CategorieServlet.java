package FRALEXISTP2BLOG.servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

import FRALEXISTP2BLOG.beans.Categorie;

@WebServlet(urlPatterns = "/categories")

public class CategorieServlet extends HttpServlet
{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		this.getServletContext().getRequestDispatcher("/WEB-INF/utilisateur/create_categorie.jsp").forward(req, resp);
	}
}
