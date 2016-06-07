package controller;	

import model.TipoEsame;
import model.TipoEsameFacade;

import java.util.Date;
import java.util.List;

import javax.ejb.EJB;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.ManagedProperty;

@ManagedBean(name="TipoEsameController")
public class TipoEsameController {

	
		@ManagedProperty(value="#{param.id}")
		private Long id;
		private String nome;
		private Float prezzo;
		private String descrizione;
		private String code;
		private TipoEsame tipoEsame;
		private Date creationTime;
		private List<TipoEsame> tipoEsami;
		
		@EJB
		private TipoEsameFacade tipoEsameFacade;
		
		public String createTipoEsame() {
			this.tipoEsame = tipoEsameFacade.createTipoEsame(nome, descrizione, prezzo, code, creationTime);
			return "tipoEsame"; 
		}
		
		public String listTipoEsami() {
			this.tipoEsami = tipoEsameFacade.getAllTipoEsame();
			return "tipoEsami"; 
		}

		public String findTipoEsame() {
			this.tipoEsame = tipoEsameFacade.getTipoEsame(id);
			return "tipoEsame";
		}
		
		public String findTipoEsame(Long id) {
			this.tipoEsame = tipoEsameFacade.getTipoEsame(id);
			return "tipoEsame";
		}

		public Long getId() {
			return id;
		}

		public void setId(Long id) {
			this.id = id;
		}

		public String getNome() {
			return nome;
		}

		public void setNome(String nome) {
			this.nome = nome;
		}

		public Float getPrezzo() {
			return prezzo;
		}

		public void setPrezzo(Float prezzo) {
			this.prezzo = prezzo;
		}

		public String getDescrizione() {
			return descrizione;
		}

		public void setDescrizione(String descrizione) {
			this.descrizione = descrizione;
		}

		public String getCode() {
			return code;
		}

		public void setCode(String code) {
			this.code = code;
		}

		public TipoEsame getTipoEsame() {
			return tipoEsame;
		}

		public void setTipoEsame(TipoEsame tipoEsame) {
			this.tipoEsame = tipoEsame;
		}

		public List<TipoEsame> getTipoEsami() {
			return tipoEsami;
		}

		public void setTipoEsami(List<TipoEsame> tipoEsami) {
			this.tipoEsami = tipoEsami;
		}

		public Date getCreationTime() {
			return creationTime;
		}

		public void setCreationTime(Date creationTime) {
			this.creationTime = creationTime;
		}
		
	}