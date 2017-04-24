package es.upm.dit.isst.sp2;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.googlecode.objectify.ObjectifyService;

import es.upm.dit.isst.sp2.dao.EMOJDAO;
import es.upm.dit.isst.sp2.dao.EMOJDAOImpl;
import es.upm.dit.isst.sp2.model.EMOJI;



public class ListEmojis extends HttpServlet{
	private static final long serialVersionUID = 01L;
	

	@Override
	public void init() throws ServletException {
		ObjectifyService.register(EMOJI.class);
	}
	
	public void doGet(HttpServletRequest request, HttpServletResponse resp) 
		      throws IOException, ServletException {

		 EMOJDAO dao = EMOJDAOImpl.getInstancia();
   
		 List<EMOJI> emojis = dao.readAllEMOJIS();
		 
		 // Por si queremos limpiar la BD. Cada vez que cambie la estructura de la BD, hay que limpiar los regs existentes
		 /*for(EMOJI emoj: emojis) {
				//response.getWriter().printf("Autor: " + tfg.getAutor() + ", Tutor: " +  tfg.getTutor() + ", Supervisor: " + 
					//						tfg.getSecretario() + ", Título: " + tfg.getTitle());
				//response.getWriter().println("<br>"); 
			 dao.delete(emoj);
		  } */

		 	
		 request.getSession().setAttribute("emojis", new ArrayList<EMOJI>(emojis));
		 RequestDispatcher view = request.getRequestDispatcher("ShowEmojis.jsp");
		 view.forward(request, resp);

 }
}
