package es.upm.dit.isst.sp2.dao;

import java.util.List;

import es.upm.dit.isst.sp2.model.EMOJI;

public interface EMOJDAO {
		public EMOJI create (String emojid, int uid, String desc, String trad, String uname);
		public List<EMOJI> readAllEMOJIS();
		public List<EMOJI> readByUSer(String usrmail);
		public EMOJI readEmoji (String emojid);
		public EMOJI update (EMOJI emoj);
		public EMOJI delete (EMOJI emoj); 
}
