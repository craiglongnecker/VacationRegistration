package edu.dmacc.spring.vacationregistration;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.TypedQuery;

public class VacationDao {
	
	EntityManagerFactory emfactory = Persistence.createEntityManagerFactory("VacationRegistration");
	
	public void insertVacation(Vacation vacationToAdd) {
		EntityManager em = emfactory.createEntityManager();
		em.getTransaction().begin();
		em.persist(vacationToAdd);
		em.getTransaction().commit();
		em.close();
//		emfactory.close();
		}

	public List<Vacation> getAllVacations() {
		EntityManager em = emfactory.createEntityManager();
		em.getTransaction() .begin();
		String q = "Select v from Vacation v";
		TypedQuery<Vacation> typedQuery = em.createQuery(q, Vacation.class);
		List<Vacation> all = typedQuery.getResultList();
		return all;
	}
}
