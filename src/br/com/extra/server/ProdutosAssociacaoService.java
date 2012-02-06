package br.com.extra.server;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.flex.remoting.RemotingDestination;
import org.springframework.stereotype.Service;

import br.com.extra.persistent.Produto;
import br.com.extra.server.dao.ProdutosAssociacaoDAO;
import br.com.htecon.server.services.BasicService;

@Service
@RemotingDestination(value = "produtosAssociacaoService")
public class ProdutosAssociacaoService extends BasicService {

	public static final String OPERATION_DELETE = "D";
	public static final String OPERATION_INSERT = "I";

	public static final Integer TYPE_PRODUTOS_EMPRESA = 1;

	@Resource(name = "produtosAssociacaoDAO")
	public ProdutosAssociacaoDAO produtosAssociacaoDAO;

	public List<Produto> findProdutosAssociados(Integer type, String id) {
		if (TYPE_PRODUTOS_EMPRESA.equals(type)) {
			return produtosAssociacaoDAO.findProdutosAssociadosEmpresa(Integer
					.valueOf(id));
		} else {
			return null;
		}
	}

	public List<Produto> findProdutos(String nuFamilia) {
		return produtosAssociacaoDAO.findProdutos(nuFamilia);
	}

	public void saveProdutosAssociados(Integer type, String id, List changes) {
		for (Object item : changes) {
			Map change = (Map) item;
			if (OPERATION_INSERT.equals(change.get("operation"))) {
				produtosAssociacaoDAO.insertEmpresaProduto(Integer.valueOf(id),
						Integer.valueOf((String) change.get("nuProduto")));
			} else if (OPERATION_DELETE.equals(change.get("operation"))) {
				produtosAssociacaoDAO.deleteEmpresaProduto(Integer.valueOf(id),
						Integer.valueOf((String) change.get("nuProduto")));
			}
		}

	}

}
