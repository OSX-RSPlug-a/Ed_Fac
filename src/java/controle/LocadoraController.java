/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controle;

import dao.LocadoraDao;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.Usuario;

/**
 *
 * @author GueGui
 */
public class LocadoraController extends HttpServlet {
    private static final String ADICIONAR_OU_ATUALIZAR = "/regist.jsp";
    private static final String LISTAR_USUARIO = "/listarUsuario.jsp";
    private LocadoraDao dao;
    
    public LocadoraController() {
        super();
        dao = new LocadoraDao();
    }
    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            
            
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
            int id = Integer.parseInt(request.getParameter("id_usu"));
            dao.excluirUsuario(id);
            forward = LISTAR_USUARIO;
            request.setAttribute("usuario", dao.listarUsuario());
        } else if (action.equalsIgnoreCase("editar")){
            forward = ADICIONAR_OU_ATUALIZAR;
            int id = Integer.parseInt(request.getParameter("id_usu"));
            Usuario u = dao.buscarUsuarioPorId(id);
            request.setAttribute("usuario", u);
        }else if (action.equalsIgnoreCase("listaUsuario")){
            forward = LISTAR_USUARIO;
            request.setAttribute("usuario", dao.listarUsuario());
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
        Usuario u = new Usuario();
        
        String user = request.getParameter("nome");
        
        u.setNome(request.getParameter("nome"));
        u.setEmail(request.getParameter("email"));
        u.setSenha(request.getParameter("senha"));
        String id_usuario = request.getParameter("id_usu");
        
        if(id_usuario == null || id_usuario.isEmpty()){
            dao.adicionarUsuario(u);
            
        }else{
            u.setId_usu(Integer.parseInt(id_usuario));
            dao.atualizarUsuario(u);
        }
        RequestDispatcher visao = request.getRequestDispatcher(LISTAR_USUARIO);
        request.setAttribute("usuario", dao.listarUsuario());
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
