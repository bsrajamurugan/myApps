/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.hadoop.demo;

import java.io.*;
import java.sql.*;
import javax.sql.DataSource;
import javax.naming.Context;
import javax.naming.InitialContext;

/**
 *
 * @author Raj
 */
public class DataAccess {

    Context ctx = null;
    Connection con = null;
    Statement stmt = null;
    ResultSet rs = null;
    boolean status = false;

    public DataAccess() {

    }

    public void createconnection() throws IOException, SQLException {
        try {
            ctx = new InitialContext();
            DataSource ds = (DataSource) ctx.lookup("jdbc/mySQLappdb");
            con = ds.getConnection();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public boolean DataExists(String sqlquery) throws SQLException {
        try {
            createconnection();
            stmt = con.createStatement();
            rs = stmt.executeQuery(sqlquery);
            status = rs.next();
            con.close();
            System.out.println(status);
            return status;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }
    
    public ResultSet execsql (String sqlstatement) throws SQLException {
        
        try {
        createconnection();
        stmt = con.createStatement();
        rs = stmt.executeQuery(sqlstatement);
        con.close();
        return rs;  
        }  catch (Exception e) {
            e.printStackTrace();
            return rs;
        }
    }
}
