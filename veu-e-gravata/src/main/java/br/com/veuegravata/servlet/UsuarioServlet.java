package br.com.veuegravata.servlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.ProdutoCasalDao;
import dao.UsuarioDao;
import model.ProdutoCasal;
import model.Usuario;

import java.io.IOException;

@WebServlet("/usuario")
public class UsuarioServlet extends HttpServlet {

    //CRIAR USUARIO
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String carName = request.getParameter("nome");

        System.out.println(carName);

        request.getRequestDispatcher("index.jsp").forward(request, response);
    }

    @Override
    protected void doDelete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        Usuario usuario = (Usuario)session.getAttribute("usuarioLogado");

        if (usuario == null) {
            request.getRequestDispatcher("index.jsp").forward(request, response);
        }

        ProdutoCasalDao produtoCasalDao = new ProdutoCasalDao();

        produtoCasalDao.removerRegistrosDeUmUsuario(usuario);

        UsuarioDao usuarioDao = new UsuarioDao();

        usuarioDao.deleteUsuario(usuario);

        request.getSession().removeAttribute("usuarioLogado");
        request.getSession().invalidate();

        response.sendRedirect(request.getContextPath() + "/pages/jsp/index.jsp");
    }
}