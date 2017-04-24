package es.upm.dit.isst.sp2;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import es.upm.dit.isst.sp2.dao.EMOJDAO;
import es.upm.dit.isst.sp2.dao.EMOJDAOImpl;
import es.upm.dit.isst.sp2.model.EMOJI;


@SuppressWarnings("serial")
public class InsertEmoji extends HttpServlet {
	
	public void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{

		EMOJDAO dao = EMOJDAOImpl.getInstancia();
		
		String codigo = req.getParameter("code");
		String user = req.getParameter("user");
		String descripcion = req.getParameter("desc");
		String trad = req.getParameter("translation");
		
		EMOJI newemoji = dao.create(codigo, 1, descripcion, trad, user);
		req.getSession().setAttribute("emoji", newemoji);
		req.getSession().setAttribute("idemoji", codigo);
		req.getSession().setAttribute("autor", user);
		req.getSession().setAttribute("desc", descripcion);
		req.getSession().setAttribute("trad", trad);
		req.getSession().setAttribute("estado", 1);
		resp.sendRedirect("CreateEmojiView.jsp");
	}  
}
