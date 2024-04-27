package br.com.veuegravata.servlet;

import dao.UsuarioDao;
import model.Login;
import dao.LoginDao;
import model.Usuario;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String email = req.getParameter("DS_EMAIL");
        String senha = req.getParameter("DS_SENHA");

        Login login = new Login(email, senha);

        boolean isValidUser = new LoginDao().verifyCredentials(login);

        if(isValidUser){
            Usuario usuario = new UsuarioDao().getUsuario(email);

            if (usuario != null) {
                HttpSession session = req.getSession();
                session.setAttribute("usuarioLogado", usuario);
            }
            
            resp.sendRedirect(req.getContextPath() + "/pages/jsp/index.jsp"); // Redireciona para a página home após o login bem-sucedido
        } else {
            req.setAttribute("message", "Ops! Parece que o seu nome de usuário ou senha estão incorretos. Por favor, verifique e tente novamente!");

            req.getRequestDispatcher("/pages/jsp/login.jsp").forward(req, resp); // Fica na página de login com uma mensagem de erro
        }
    }
}