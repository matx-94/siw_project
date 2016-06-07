package controller;

import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.TimeZone;

import javax.ejb.EJB;
import javax.faces.bean.ManagedBean;

import model.Esame;
import model.EsameFacade;
import model.Medico;
import model.Paziente;
import model.PazienteFacade;
import model.TipoEsame;
import model.TipoEsameFacade;


@ManagedBean(name="esameController")
public class EsameController {
	@EJB(beanName="esameFacade")
	private EsameFacade esameFacade;
	
	@EJB(beanName="pazienteFacade")
	private PazienteFacade pazienteFacade;
	
	@EJB(beanName="tipoEsameFacade")
	private TipoEsameFacade tipoEsameFacade;
	
	private String codeTipoEsame;
	private String codePaziente;
	private String codeEsame;
	private Paziente paziente;
	private TipoEsame tipoEsame;
	
	
	
	private Esame esame;
	
	public String createEsame() {
		Paziente paziente = this.pazienteFacade.findPaziente(codePaziente);
		TipoEsame tipoEsame = this.tipoEsameFacade.findTipoEsame(codeTipoEsame);
		Medico medico = null;
				
		this.esame= esameFacade.createEsame(codeEsame, medico, paziente, tipoEsame, Calendar.getInstance().getTime());
		List<Esame> esami = this.tipoEsameFacade.addEsame(this.esame, tipoEsame);
		return "order";
	}

	public String getCodeTipoEsame() {
		return codeTipoEsame;
	}

	public void setCodeTipoEsame(String codeTipoEsame) {
		this.codeTipoEsame = codeTipoEsame;
	}

	public String getCodePaziente() {
		return codePaziente;
	}

	public void setCodePaziente(String codePaziente) {
		this.codePaziente = codePaziente;
	}

	public String getCodeEsame() {
		return codeEsame;
	}

	public void setCodeEsame(String codeEsame) {
		this.codeEsame = codeEsame;
	}

	public Paziente getPaziente() {
		return paziente;
	}

	public void setPaziente(Paziente paziente) {
		this.paziente = paziente;
	}

	public TipoEsame getTipoEsame() {
		return tipoEsame;
	}

	public void setTipoEsame(TipoEsame tipoEsame) {
		this.tipoEsame = tipoEsame;
	}

	public Esame getEsame() {
		return esame;
	}

	public void setEsame(Esame esame) {
		this.esame = esame;
	}
	


}