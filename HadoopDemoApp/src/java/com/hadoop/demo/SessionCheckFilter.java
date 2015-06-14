/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.hadoop.demo;

import java.io.IOException;
import static java.lang.System.out;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Raj
 */
public class SessionCheckFilter implements Filter {

   private String contextPath;

  @Override
  public void init(FilterConfig fc) throws ServletException {
    contextPath = fc.getServletContext().getContextPath();
  }

  @Override
  public void doFilter(ServletRequest request, ServletResponse response, FilterChain fc) throws IOException, ServletException {
    HttpServletRequest req = (HttpServletRequest) request;
    HttpServletResponse res = (HttpServletResponse) response;  
String path = ((HttpServletRequest) request).getServletPath();
    if (!path.equals( "/login.jsp") && req.getSession().getAttribute("sessUname") == null ) { //checks if there's a LOGIN_USER set in session...
        res.sendRedirect(contextPath + "/login.jsp"); //or page where you want to redirect
         out.println("<font color=red>Either user name or password is wrong.</font>");
    } else {
     
      fc.doFilter(request, response);
    }
  }

  @Override
  public void destroy() {
  }
}
