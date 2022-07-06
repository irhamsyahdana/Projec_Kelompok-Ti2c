/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package koneksi;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import javax.swing.JOptionPane;

/**
 *
 * @author Hadi Firmansyah
 */
public class koneksi {
    public static Connection konek(){
        try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection konekdb = DriverManager.getConnection("jdbc:mysql://localhost/pcshop","root","");
            return konekdb;
        }catch(ClassNotFoundException | SQLException e){
            JOptionPane.showMessageDialog(null, e);
            return null;
        }
    }
}