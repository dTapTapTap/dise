package es.upm.dit.isst.sp2.model;

import java.io.Serializable;

import com.googlecode.objectify.annotation.Entity;
import com.googlecode.objectify.annotation.Id;
import com.googlecode.objectify.annotation.Index;

@Entity
public class EMOJI implements Serializable {
	private static final long serialVersionUID = 01L;
	@Id
	private String idemoji;
	@Index
	private int iduser;
	private String descemoji;
	private String trademoji;
	@Index
	private String nomuser;
	
	/* Default no-arg constructor */
	public EMOJI() { 
		this.idemoji = "";
		this.iduser = 0;
		this.descemoji = "";
		this.trademoji = "";
		this.nomuser = "";
	}
	/* Constructor */
	public EMOJI(String id, int userid, String desc, String trad, String nombre) {
		this.idemoji = id;
		this.iduser = userid;
		this.descemoji = desc;
		this.trademoji = trad;
		this.nomuser = nombre;
	}
	/* Getters */
	public String getIdemoji() {
		return this.idemoji;
	}
	public int getIduser() {
		return this.iduser;
	}
	public String getDescemoji() {
		return this.descemoji;
	}
	public String getTrademoji() {
		return this.trademoji;
	}
	public String getNomuser() {
		return this.nomuser;
	}
	/* Setters */
	public void setEmojid(String id) {
		this.idemoji = id;
	}
	public void setUserid(int id) {
		this.iduser = id;
	}
	public void setDesc(String desc) {
		this.descemoji = desc;
	}
	public void setTrad(String trad) {
		this.trademoji = trad;
	}
	public void setUsrName(String name) {
		this.nomuser = name;
	}
}
