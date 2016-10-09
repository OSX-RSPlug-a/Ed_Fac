/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controle;

import dao.FilmeDao;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.Filme;

/**
 *
 * @author Administrador
 */
public class FilmeController extends HttpServlet {
private static final String ADICIONAR_OU_ATUALIZAR = "/cadastrarFilme.jsp";
    private static final String LISTAR_FILME = "/listarFilmes.jsp";
    private FilmeDao dao;
    
    public FilmeController() {
        super();
        dao = new FilmeDao();
    }
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
           
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String forward = "";
        String action = request.getParameter("action");
        if (action.equalsIgnoreCase("apagar")) {
            int id = Integer.parseInt(request.getParameter("id_filme"));
            dao.excluirFilme(id);
            forward = LISTAR_FILME;
            request.setAttribute("filme", dao.listarFilme());
        } else if (action.equalsIgnoreCase("editar")){
            forward = ADICIONAR_OU_ATUALIZAR;
            int id = Integer.parseInt(request.getParameter("id_filme"));
            Filme u = dao.buscarFilmePorId(id);
            request.setAttribute("filme", u);
        }else if (action.equalsIgnoreCase("listaFilme")){
            forward = LISTAR_FILME;
            request.setAttribute("filme", dao.listarFilme());
        }else {
            forward = ADICIONAR_OU_ATUALIZAR;
            
        }
        RequestDispatcher view = request.getRequestDispatcher(forward);
        view.forward(request, response);
    
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        Filme u = new Filme();
        String movie = request.getParameter("nome");
        
        u.setValor(Double.parseDouble(request.getParameter("valor")));
        u.setNome(request.getParameter("nome"));
        u.setSinopse(request.getParameter("sinopse"));
        u.setGenero(request.getParameter("genero"));        
        String id_filme = request.getParameter("id_filme");
        
        if(id_filme == null || id_filme.isEmpty()){
            dao.adicionarFilme(u);
            
        }else{
            u.setId_filme(Integer.parseInt(id_filme));
            dao.atualizarFilme(u);
        }
        
        RequestDispatcher visao = request.getRequestDispatcher(LISTAR_FILME);
        request.setAttribute("filme", dao.listarFilme());
        visao.forward(request, response);
        
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
