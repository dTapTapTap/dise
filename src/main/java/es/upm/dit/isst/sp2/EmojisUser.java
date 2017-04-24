package es.upm.dit.isst.sp2;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.googlecode.objectify.ObjectifyService;

import es.upm.dit.isst.sp2.model.EMOJI;

public class EmojisUser extends HttpServlet {
	
	private static final long serialVersionUID = 01L;

	@Override
	public void init() throws ServletException {
		ObjectifyService.register(EMOJI.class);
	}

	 public void doGet(HttpServletRequest request, HttpServletResponse response) 
		      throws IOException, ServletException {

	request.getSession().setAttribute("estado", 0);	 
    response.setContentType("text/html");
    response.getWriter().print("Lista de emojis creados por un usuario\r\n");
    
    RequestDispatcher view = request.getRequestDispatcher("EmojiUserView.jsp");
	view.forward(request, response);
 
  }
}