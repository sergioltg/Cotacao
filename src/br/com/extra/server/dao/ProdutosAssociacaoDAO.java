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
	
	public List findProdutos(String nuFamilia) {
		Session session = (Session) entityManager.getDelegate();

		Query query = session
				.createQuery("SELECT p FROM Produto p WHERE p.nuFamilia = :nuFamilia ");
		query.setParameter("nuFamilia", nuFamilia);

		return query.list();		
	}
	
	public void insertEmpresaProduto(Integer cdEmpresa, Integer nuProduto) {
		Session session = (Session) entityManager.getDelegate();
		
		Query query = session.createSQLQuery("insert ecdtEmpresaProduto (cdEmpresa, nuProduto) values (:cdEmpresa, :nuProduto)");
		query.setParameter("cdEmpresa", cdEmpresa);
		query.setParameter("nuProduto", nuProduto);
		
		query.executeUpdate();
	}
	
	public void deleteEmpresaProduto(Integer cdEmpresa, Integer nuProduto) {
		Session session = (Session) entityManager.getDelegate();
		
		Query query = session.createSQLQuery("delete from ecdtEmpresaProduto where cdEmpresa = :cdEmpresa and nuProduto = :nuProduto");
		query.setParameter("cdEmpresa", cdEmpresa);
		query.setParameter("nuProduto", nuProduto);
		
		query.executeUpdate();
	}	
	

}
