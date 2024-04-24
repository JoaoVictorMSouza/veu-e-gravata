package br.com.veuegravata.servlet;

import model.Login;
import dao.LoginDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
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
            req.getSession().setAttribute("LoggedUser", email);

            resp.sendRedirect(req.getContextPath() + "/pages/jsp/index.jsp"); // Redireciona para a página home após o login bem-sucedido
        }else{
            req.setAttribute("message", "Credenciais Incorreta!");

            req.getRequestDispatcher("/pages/jsp/login.jsp").forward(req, resp); // Fica na página de login com uma mensagem de erro
        }
    }
}