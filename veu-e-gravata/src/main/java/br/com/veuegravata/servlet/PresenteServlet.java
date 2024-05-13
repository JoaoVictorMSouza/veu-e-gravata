package br.com.veuegravata.servlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.CasalDao;
import dao.ProdutoCasalDao;
import dao.ProdutoDao;
import model.Casal;
import model.Produto;
import model.ProdutoCasal;
import model.ProdutoComplementar;
import model.Usuario;

import java.io.IOException;
import java.util.ArrayList;


@WebServlet("/presente")
public class PresenteServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String idCasalString = request.getParameter("idCasal");

        if (idCasalString == null) {
            request.setAttribute("message", "Casal não encontrado. Por favor, tente novamente!");

            request.getRequestDispatcher("/pages/jsp/casal.jsp").forward(request, response);
        }

        int idCasal = Integer.parseInt(idCasalString);

        String idProdutoString = request.getParameter("idProduto");

        if (idProdutoString == null) {
            request.setAttribute("message", "Produto não encontrado. Por favor, tente novamente!");

            request.getRequestDispatcher("/pages/jsp/casal.jsp").forward(request, response);
        }

        int idProduto = Integer.parseInt(idProdutoString);

        ProdutoCasalDao produtoCasalDao = new ProdutoCasalDao();

        int idProdutoCasal = produtoCasalDao.verificarSeExisteProdutoCasalByIdProdutoEIdCasal(idProduto, idCasal);

        if (idProdutoCasal < 0) {
            request.setAttribute("message", "Produto não está na lista do casal. Por favor, tente novamente!");

            request.getRequestDispatcher("/pages/jsp/casal.jsp").forward(request, response);
        }

        if (produtoCasalDao.verificarSeExisteProdutoCasalEstaReservado(idProduto, idCasal, idProdutoCasal)) {
            request.setAttribute("message", "Produto já reservado. Por favor, tente novamente!");

            request.getRequestDispatcher("/pages/jsp/casal.jsp").forward(request, response);
        }

        HttpSession session = request.getSession();
        Usuario usuario = (Usuario)session.getAttribute("usuarioLogado");

        produtoCasalDao.updateProdutoCasal(idCasal, idProduto, usuario.getId(), idProdutoCasal);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int idCasal = Integer.parseInt(request.getParameter("idCasal"));
        int idProduto = Integer.parseInt(request.getParameter("idProduto"));

        Produto produto = new ProdutoDao().getProdutoByIdProduto(idProduto);

        if (produto == null) {
            request.setAttribute("message", "Produto não encontrado. Por favor, tente novamente!");

            request.getRequestDispatcher("/pages/jsp/casal.jsp").forward(request, response);

            return;
        }

        Casal casal = new CasalDao().getCasalByIdCasal(idCasal);

        if (casal == null) {
            request.setAttribute("message", "Casal não encontrado. Por favor, tente novamente!");

            request.getRequestDispatcher("/pages/jsp/casal.jsp").forward(request, response);

            return;
        }

        ArrayList<ProdutoComplementar> produtos = new ArrayList<>();

        ProdutoComplementar produtoComplementar = new ProdutoComplementar(produto, false);

        produtos.add(produtoComplementar);

        ProdutoCasal produtoCasal = new ProdutoCasal(casal, produtos);

        request.setAttribute("produtosCasal", produtoCasal);
        request.getRequestDispatcher("/pages/jsp/darPresente.jsp").forward(request, response);
    }
}