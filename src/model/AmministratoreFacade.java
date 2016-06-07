package model;


import java.util.List;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import javax.persistence.criteria.CriteriaQuery;


@Stateless(name="amministratoreFacade")
public class AmministratoreFacade {
	
	@PersistenceContext(unitName= "unit-progettoSiw")
	private EntityManager em;
	
	
	public Amministratore validate (String username, String password){
		Query q = em.createQuery("SELECT a FROM Amministratore a WHERE a.username='"+ username + "' AND a.password='"+password+"'");
		Amministratore a = (Amministratore)q.getSingleResult();
		return a;
	}
	public Amministratore getAmministratore(Long id) {
	    Amministratore product = em.find(Amministratore.class, id);
		return product;
	}
	
	public void updateAmministratore(Amministratore amministratore) {
        em.merge(amministratore);
	}
	
	public Amministratore createAmministratore(String userName, String password){
		Amministratore amministratore = new Amministratore(userName,password);
		em.persist(amministratore);
		return amministratore;
	}
	
	public List<Amministratore> getAllAmministratori() {
        CriteriaQuery<Amministratore> cq = em.getCriteriaBuilder().createQuery(Amministratore.class);
        cq.select(cq.from(Amministratore.class));
        List<Amministratore> amministratori = em.createQuery(cq).getResultList();
		return amministratori;
	}
	
}