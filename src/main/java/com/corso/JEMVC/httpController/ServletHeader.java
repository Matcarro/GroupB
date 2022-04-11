package com.corso.JEMVC.httpController;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Servlet
 */
@WebServlet("/ServletHeader")
//SERVLET THAT WILL BE A VIEW
public class ServletHeader extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
	int n;
    public ServletHeader() {
        super();
        // TODO Auto-generated constructor stub
    }
   
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void doGet(HttpServletRequest req, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter w = response.getWriter(); 
		w.append("<p>Numero di richieste: " +this.n++ + "</p>");
		w.append("<table border=\"1\" bgcolor=\"yellow\">");
		w.append("<tr><td>contextPath:</td>"); w.append("<td>"+req.getContextPath() +"</td></tr>");
		w.append("<tr><td>metodo HTTP:</td>"); w.append("<td>"+req.getMethod() +"</td></tr>");
		w.append("<tr><td>local Address:</td>"); w.append("<td>"+req.getLocalAddr() +"</td></tr>");
		w.append("</table>");
	}


	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
