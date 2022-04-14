/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Toko;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
/**
 *
 * @author akramulfata
 */
public class koneksi {
     private static Connection koneksi;
     public static Connection getKoneksi(){
        if (koneksi == null) {
            try {
                String url = "jdbc:mysql://localhost:3307/db_penjualan";
                String user = "root";
                String password = "root";
                DriverManager.registerDriver(new com.mysql.jdbc.Driver());
                koneksi = (Connection) DriverManager.getConnection(url, user, password);
                System.out.println("Berhasil");
            } catch (SQLException e) {
                System.out.println("Error");
            }
        }
        return koneksi;
    }
    public static void main(String args[]){
        getKoneksi();
    }  
}
