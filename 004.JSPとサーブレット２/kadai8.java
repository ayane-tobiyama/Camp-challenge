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
public class kadai8 extends HttpServlet {
    
        String getID(int x){
            String n[] = {"","",""},b[] = {"","",""},j[] = {"","",""};
            String name[] = {"石原さとみ","本田翼","菅田将暉"};
            String birth[] = {"1986年12月24日","1992年6月27日","1993年2月21日"};
            String jusho[] = {"東京都杉並区○町△-□-×",null,"東京都渋谷区○町△-□-×"};
            for(int i=0;i<3;i++){
                n[i] = "名前：" + name[i] + "<br>";
                b[i] = "生年月日：" + birth[i] + "<br>";
                if(jusho[i]==null){
                    continue;
                }
                j[i] = "住所：" + jusho[i] + "<br>";
            }        
            return n[x] + b[x] + j[x];
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
        
            int limit = 2;
        
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet kadai8</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>課題８</h1>");
            for(int i=0;i<3;i++){
                out.println(getID(i));
                if(i==limit-1){
                    break;
                }
            }
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
