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
public class DelUsrEmoji extends HttpServlet {
	
	public void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{

		EMOJDAO dao = EMOJDAOImpl.getInstancia();
		
		int emojIdx = Integer.parseInt(req.getParameter("emojidx"));
		String nomuser = (String)req.getSession().getAttribute("usrmail");
		List<EMOJI> emojis = dao.readByUSer(nomuser);
		EMOJI emoj = emojis.get(emojIdx);
		
		dao.delete(emoj);
		emojis.remove(emojIdx);
		
		req.getSession().setAttribute("estado", 2);
		req.getSession().setAttribute("emojis", emojis);
		resp.sendRedirect("EmojiUserView.jsp");
	}

    

}