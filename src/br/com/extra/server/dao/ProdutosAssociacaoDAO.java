package br.com.extra.server.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.stereotype.Service;

import br.com.htecon.server.services.dao.BasicDAO;

@Service("produtosAssociacaoDAO")
public class ProdutosAssociacaoDAO extends BasicDAO {

	@PersistenceContext
	protected EntityManager entityManager;

	public List findProdutosAssociadosEmpresa(Integer cdEmpresa) {
		Session session = (Session) entityManager.getDelegate();

		Query query = session
				.createQuery("SELECT p FROM Empresaproduto ep, Produto p WHERE ep.cdEmpresa = :cdEmpresa "
						+ "and ep.nuProduto = p.nuProduto ");
		query.setParameter("cdEmpresa", cdEmpresa);

		return query.list();
	}
	
	public List findProdutos(Integer nuFamilia) {
		Session session = (Session) entityManager.getDelegate();

		Query query = session
				.createQuery("SELECT p FROM Produto p WHERE ep.nuFamilia = :nuFamilia ");
		query.setParameter("nuFamilia", nuFamilia);

		return query.list();		
	}

}
