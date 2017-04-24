package es.upm.dit.isst.sp2.dao;

import static com.googlecode.objectify.ObjectifyService.ofy;

import java.util.List;

import com.google.appengine.api.datastore.Key;
import com.google.appengine.api.datastore.KeyFactory;
import com.google.appengine.api.datastore.Query;

import es.upm.dit.isst.sp2.model.EMOJI;

@SuppressWarnings("unused")
public class EMOJDAOImpl implements EMOJDAO{

private static EMOJDAOImpl instancia;
	
	private EMOJDAOImpl () {
	}
	
	public static EMOJDAOImpl getInstancia() {
		if (instancia == null)
			instancia= new EMOJDAOImpl();
		return instancia;
	}
	
	@Override
	public EMOJI create(String emojid, int uid, String desc, String trad, String uname) {
		EMOJI emoji = new EMOJI(emojid, uid, desc, trad, uname);
		ofy().save().entity(emoji).now();
		return emoji;
	}

	@Override
	public List<EMOJI> readAllEMOJIS() {
		return ofy().load().type(EMOJI.class).list();
	}

	@Override
	public EMOJI readEmoji(String emojid) {
		Key keyEmoji = KeyFactory.createKey("EMOJI", emojid);
		//Ojo! Para filtrar por clave hay que utlizar el metodo filterKey en lugar de filter
		return ofy().load().type(EMOJI.class).filterKey(keyEmoji).first().now();
	}
	
	@Override
	public List<EMOJI> readByUSer(String user) {
		return ofy().load().type(EMOJI.class).filter("nomuser", user).list();
	}

	@Override   
	public EMOJI update(EMOJI emoj) {
		ofy().save().entity(emoj).now();
		return emoj;
	}

	@Override
	public EMOJI delete(EMOJI emoj) {
		ofy().delete().entity(emoj).now();
		return emoj;
	}

}
