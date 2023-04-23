/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author andga
 */
@WebServlet(urlPatterns = {"/Controlador"})
public class Controlador extends HttpServlet {

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
        String tabla = request.getParameter("tabla");
        request.setAttribute("tabla", tabla);
        //request.getRequestDispatcher("jstl_recibir.jsp").forward(request,  response);  
        String n1 = request.getParameter("num1");
        String n2 = request.getParameter("num2");
        String op = request.getParameter("operacion");

        double _num1 = Double.parseDouble(n1);
        double _num2 = Double.parseDouble(n2);

        double resultado;

        if (op.equals("+")) {
            resultado = _num1 + _num2;
        } else if (op.equals("-")) {
            resultado = _num1 - _num2;
        } else if (op.equals("*")) {
            resultado = _num1 * _num2;
        } else if (op.equals("/")) {
            resultado = _num1 / _num2;
        } else {
            throw new ServletException("Operacion Invalida");
        }
        request.setAttribute("num1", n1);
        request.setAttribute("num2", n2);
        request.setAttribute("simbolo", op);
        request.setAttribute("resultado", resultado);
        request.getRequestDispatcher("Resultado.jsp").forward(request, response);

        
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
        processRequest(request, response);
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
        processRequest(request, response);
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
