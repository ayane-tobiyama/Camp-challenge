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
import java.util.Random;

import java.util.Date;
import javax.servlet.RequestDispatcher;
/**
 *
 * @author ayanet
 */
public class FortuneTelling extends HttpServlet {

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
        
        final String result = "WEB-INF/jsp/FortuneTellingResult.jsp";
        
        String list[] = {"大吉","中吉","小吉","吉","末吉","凶","大凶"};//運勢の配列       
        Random rand = new Random();//乱数生成       
        Integer x = rand.nextInt(list.length);//乱数取得
        
        //リクエストスコープへ結果を設定
        ResultData data = new ResultData(); 
        data.setD(new Date());
        data.setLuck(list[x]);
        request.setAttribute("DATA",data);//リクエストスコープに登録
        RequestDispatcher rd = request.getRequestDispatcher(result);
        rd.forward(request,response);
        
        try(PrintWriter out = response.getWriter()){
            
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>本日の運勢</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>本日のあなたの運勢は。。。" + list[x] + "！</h1>");
            out.println("</body>");
            out.println("</html>");
            out.println("");
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
