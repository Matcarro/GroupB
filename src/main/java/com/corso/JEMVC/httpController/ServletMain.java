package com.corso.JEMVC.httpController;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Servlet
 */
@WebServlet("/ServletMain")
//SERVLET THAT WILL CALL A JSP FILE
public class ServletMain extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletMain() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void doGet(HttpServletRequest req, HttpServletResponse response) throws ServletException, IOException {
    	String train = req.getParameter("train");
    	String input = req.getParameter("input");
		PrintWriter w = response.getWriter(); 
		
		if(input == "on") {
			RequestDispatcher rd = req.getRequestDispatcher("NumeroRichieste.jsp");
			req.setAttribute("messaggio", train);
			rd.forward(req, response);
		} else if (input != null) {
			RequestDispatcher rd = req.getRequestDispatcher("TrainView.jsp");
			req.setAttribute("train", train);
			rd.forward(req, response);
		} else {
			w.append("<table border=\"1\" bgcolor=\"yellow\">");
			w.append("<tr><td>Context Path:</td><td>"+req.getContextPath() +"</td></tr>");
			w.append("<tr><td>Method HTTP:</td><td>"+req.getMethod() +"</td></tr>");
			w.append("<tr><td>Local Address:</td><td>"+req.getLocalAddr() +"</td></tr>");
			w.append("</table>");
			
			w.append("<br />");
			w.append(train);
			w.append("<br />");
			w.append("<br />");
			
			for(int i=0; i<train.length(); i++) {
				switch (train.toLowerCase().charAt(i)) {
					case 'l' :
						w.append("Locomotiva, ");
						break;
					case 'r':
						w.append("Ristorante, ");
						break;
					case 'p':
						w.append("Passeggeri, ");
						break;
					default :
						w.append("Errore, ");
						break;
				}
			}
		}
			
		 
	}


	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
