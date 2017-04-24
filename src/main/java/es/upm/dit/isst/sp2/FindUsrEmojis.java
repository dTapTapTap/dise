package es.upm.dit.isst.sp2;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import es.upm.dit.isst.sp2.dao.EMOJDAO;
import es.upm.dit.isst.sp2.dao.EMOJDAOImpl;
import es.upm.dit.isst.sp2.model.EMOJI;


@SuppressWarnings("serial")
public class FindUsrEmojis extends HttpServlet {
	
	public void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{

		EMOJDAO dao = EMOJDAOImpl.getInstancia();
		
		String nomuser = req.getParameter("usrmail");
		List<EMOJI> emojis = dao.readByUSer(nomuser);
		
		req.getSession().setAttribute("emojis", emojis);
		req.getSession().setAttribute("usrmail", nomuser);
		req.getSession().setAttribute("estado", 2);
		resp.sendRedirect("EmojiUserView.jsp");
	}

    

}