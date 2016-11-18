/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package kadai;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author ayanet
 */
public class kadai4 extends HttpServlet {
    

    
    Boolean getJiko(){
        System.out.print("とびやま あやね<br>７月１日<br>趣味：キックボクシング、スノボ、ドラマ鑑賞、ショッピング、ピアノ（下手くそ）<br>部活：中学時代→テニス、高校時代→弓道<br>好きなもの：甘いもの、可愛いもの、世界史、トランポリン、映画、NARUTO、ONEPEICE、鋼錬、ディズニー、アベンジャーズ、、、etc<br>嫌いなもの：シイタケ、セロリ、キムチ（鍋は大丈夫）、歯医者、、、etc<br>");
        return false;
    }
    
    String getH(boolean h){
        String s="";
        if(h==true){
            s="この処理は正しく実行できました";
        }else if(h==false){
            s="この処理は正しく実行できませんでした";
        } 
        return s;
    }
 
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {

             
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet kadai4</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>課題４</h1>");
            out.println(getH(getJiko()));
            out.println("</body>");
            out.println("</html>");
           
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
