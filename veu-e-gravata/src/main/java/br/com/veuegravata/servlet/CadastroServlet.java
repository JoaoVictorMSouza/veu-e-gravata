package br.com.veuegravata.servlet;

import dao.CadastroDao;
import model.Cadastro;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/cadastro")
public class CadastroServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Obter os parâmetros do formulário
        String nome = request.getParameter("nome");
        String email = request.getParameter("email");
        String cpf = request.getParameter("cpf");
        String senha = request.getParameter("senha");

        Cadastro cadastro = new Cadastro();
        cadastro.setName(nome);
        cadastro.setEmail(email);
        cadastro.setSenha(senha);
        cadastro.setCpf(cpf);

        CadastroDao cadastroDao = new CadastroDao();

        cadastroDao.createCadastro(cadastro);

        // Aqui você deve realizar a lógica para salvar os dados do cadastro no banco de dados
        // Por exemplo, você pode chamar um método em uma classe de serviço para fazer isso

        // Redirecionar o usuário para a página de confirmação de cadastro
        response.sendRedirect(request.getContextPath() + "/pages/jsp/confirmacaoDeCadastro.jsp");
    }
}