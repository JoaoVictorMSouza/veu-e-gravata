package br.com.veuegravata.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/faleConosco")
public class FaleConoscoServlet extends HttpServlet {
    private String nome;
    private String email;
    private String mensagem;

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getMensagem() {
        return mensagem;
    }

    public void setMensagem(String mensagem) {
        this.mensagem = mensagem;
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        nome = request.getParameter("name");
        email = request.getParameter("email");
        mensagem = request.getParameter("message");

        System.out.println("Nome: " + getNome());
        System.out.println("Email: " + getEmail());
        System.out.println("Mensagem: " + getMensagem());

        request.getRequestDispatcher("/pages/jsp/index.jsp").forward(request, response);

    }
}
