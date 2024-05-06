package br.com.veuegravata.servlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

import dao.CasalDao;
import dao.ProdutoCasalDao;
import model.Casal;
import model.ProdutoCasal;
import model.ProdutoComplementar;

import java.io.IOException;

@WebServlet("/listaDePresentes")
public class ListaPresenteServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String idCasalString = request.getParameter("idCasal"))

        if (idCasalString == null) {
            request.setAttribute("message", "Casal não encontrado. Por favor, tente novamente!");

            request.getRequestDispatcher("/pages/jsp/casal.jsp").forward(request, response);
        }

        int idCasal = Integer.parseInt(idCasalString);

        Casal casal = new CasalDao().getCasalByIdCasal(idCasal);

        if (casal == null) {
            request.setAttribute("message", "Casal não encontrado. Por favor, tente novamente!");

            request.getRequestDispatcher("/pages/jsp/casal.jsp").forward(request, response);

            return;
        }

        ProdutoCasal produtoCasal = new ProdutoCasalDao().getProdutoByIdCasal(casal);

        String caminhoAbsolutoDoAplicativo = getServletContext().getRealPath("/");

        //FTO CASAL
        String pathCasalString = caminhoAbsolutoDoAplicativo+"/assets/casais/" + produtoCasal.getCasal().getFotoCasal();
        Path pathCasal = Paths.get(pathCasalString);
        boolean existsFotoCasal = Files.exists(pathCasal);

        if (produtoCasal.getCasal().getHxFotoCasal() == null || produtoCasal.getCasal().getHxFotoCasal().isEmpty() ||  !existsFotoCasal) {
            produtoCasal.getCasal().setFotoCasal("CASAL_SEM_FOTO.jpg");
            produtoCasal.getCasal().setHxFotoCasal("CASAL_SEM_FOTO.jpg");
        }

        //FTO PRODUTOS
        for (ProdutoComplementar produtoComplementar : produtoCasal.getProdutos()) {
            String pathProdutoString = caminhoAbsolutoDoAplicativo+ "/assets/produtos/" + produtoComplementar.getProduto().getHxFotoProduto();
            Path pathProduto = Paths.get(pathProdutoString);
            boolean existsFotoProduto = Files.exists(pathProduto);

            if (produtoComplementar.getProduto().getHxFotoProduto() == null || produtoComplementar.getProduto().getHxFotoProduto().isEmpty() || !existsFotoProduto) {
                produtoComplementar.getProduto().setHxFotoProduto("PRODUTO_SEM_FOTO.jpg");
            }
        }

        request.setAttribute("produtosCasal", produtoCasal);
        request.getRequestDispatcher("/pages/jsp/listaDePresentes.jsp").forward(request, response);
    }
}

