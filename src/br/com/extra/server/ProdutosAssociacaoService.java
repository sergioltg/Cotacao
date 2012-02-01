package br.com.extra.server;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.flex.remoting.RemotingDestination;
import org.springframework.stereotype.Service;

import br.com.extra.persistent.Produto;
import br.com.extra.server.dao.ProdutosAssociacaoDAO;
import br.com.htecon.server.services.BasicService;

@Service
@RemotingDestination(value="produtosAssociacaoService")
public class ProdutosAssociacaoService  extends BasicService {
	
	public static final Integer TYPE_PRODUTOS_EMPRESA = 1;
	
	@Resource(name="produtosAssociacaoDAO")
	public ProdutosAssociacaoDAO produtosAssociacaoDAO;
	
	public List<Produto> findProdutosAssociados(Integer type, String id){
		if (TYPE_PRODUTOS_EMPRESA.equals(type)) {
			return produtosAssociacaoDAO.findProdutosAssociadosEmpresa(Integer.valueOf(id));
		} else {
			return null;
		}		
	}
	
	public List<Produto> findProdutos(Integer nuFamilia) {
		return produtosAssociacaoDAO.findProdutos(nuFamilia);
	}
	
	public void saveProdutosAssociados(Integer type, String id, List changes) {
				
	}

}
