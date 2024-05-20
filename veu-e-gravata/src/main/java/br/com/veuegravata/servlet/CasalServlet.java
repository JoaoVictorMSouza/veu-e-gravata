package br.com.veuegravata.servlet;

import dao.CasalDao;
import model.Casal;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/casal")
public class CasalServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String cdCasal = request.getParameter("CD_CASAL");

        Casal casal = new CasalDao().getCasalByCdCasal(cdCasal);

        if(casal != null){
            String redirectUrl = request.getContextPath() + "/listaDePresentes?idCasal=" + casal.getId();
            response.sendRedirect(redirectUrl);
        } else {
            request.setAttribute("message", "Casal não encontrado. Por favor, tente novamente!");

            request.getRequestDispatcher("/pages/jsp/casal.jsp").forward(request, response);
        }
    }
}
