/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

import Database.Database;
import Models.Request;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Arces
 */
public class HandleRequest extends HttpServlet {

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
        PrintWriter out = response.getWriter();
        RequestDispatcher reqDispatcher = null;
        Database db = Database.getInstance();
        String action, resp;
        Request req;
        int id;
        String status, statusWord = null;

        action = request.getParameter("action");

        System.out.println("a = " + action);
        switch (action) {
            case "respond":
                id = Integer.parseInt(request.getParameter("id").substring(1, 2));

                resp = request.getParameter("resp");
                db.respondRequest(id, resp);
                break;
            case "report":
                id = Integer.parseInt(request.getParameter("id"));
                req = db.getRequestDetails(id, true);
                request.getSession().setAttribute("request", req);

                reqDispatcher = request.getRequestDispatcher("reportpage.jsp");
                reqDispatcher.forward(request, response);
                break;
            case "status":
                id = Integer.parseInt(request.getParameter("id"));
                status = request.getParameter("optradio");
                
                switch (status) {
                    case "1": statusWord = "In Transit - Incomplete";
                        break;
                    case "2": statusWord = "In Transit";
                        break;
                    case "3": statusWord = "Finished";
                        break;
                }
                db.changeRequestStatus(id, statusWord);
                out.write(statusWord);
                break;
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
