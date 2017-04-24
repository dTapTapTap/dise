package es.upm.dit.isst.sp2;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.googlecode.objectify.ObjectifyService;

import es.upm.dit.isst.sp2.model.EMOJI;

public class CreateEmoji extends HttpServlet {
	
	private static final long serialVersionUID = 01L;

	@Override
	public void init() throws ServletException {
		ObjectifyService.register(EMOJI.class);
	}

	 public void doGet(HttpServletRequest request, HttpServletResponse response) 
		      throws IOException, ServletException {

    response.setContentType("text/html");
    response.getWriter().print("Creación de un nuevo emoji\r\n");
    
    RequestDispatcher view = request.getRequestDispatcher("CreateEmojiView.jsp");
	view.forward(request, response);
 
  }
} 