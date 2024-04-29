package br.com.veuegravata.servlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.ProdutoCasal;

import java.io.IOException;
import java.util.ArrayList;

@WebServlet("/listaDePresentes")
public class PresenteServlet extends HttpServlet {

    //DAR PRESENTE
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ArrayList<ProdutoCasal> produtosCasal = new ArrayList<>(); // Substitua isso pela lógica para obter os produtos
        request.setAttribute("produtosCasal", produtosCasal);
        request.getRequestDispatcher("/pages/jsp/listaDePresentes.jsp").forward(request, response);
    }
}
