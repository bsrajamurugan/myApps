/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.hadoop.demo;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

/**
 *
 * @author Raj
 */
public class LoginServlet extends HttpServlet {

    DataAccess mydbaccess = new DataAccess();
    boolean status = false;
    String uname;
    String passwd;
    String sqlstatment;
    
    public static void main(String[] args) {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        uname = request.getParameter("login");
        passwd = request.getParameter("password");
        try {
            sqlstatment = "select * from users where name= '" + uname + "' and password= '" + passwd + "'";
            status = mydbaccess.DataExists(sqlstatment);

            if (status) {
                Cookie cuname = new Cookie("cuname", uname);
                cuname.setMaxAge(30 * 60);
                response.addCookie(cuname);
                HttpSession session = request.getSession();
                session.setAttribute("sessUname", uname);
                response.sendRedirect("main/home.jsp");

            } else {
                RequestDispatcher rd = getServletContext().getRequestDispatcher("/login.jsp");
                PrintWriter out = response.getWriter();
                out.println("<font color=red>Either user name or password is wrong.</font>");
                rd.include(request, response);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
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
