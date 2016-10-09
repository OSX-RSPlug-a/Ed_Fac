/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author GueGui
 */
public class Conexao {
private static Connection connection = null;

    //Declara uma variável do tipo Connection com valor nulo
    public Connection getConnection() {
        if (connection != null) {
            return connection;
        } else {
            try {
                Class.forName("com.mysql.jdbc.Driver").newInstance();
                connection = DriverManager.getConnection(
                        "jdbc:mysql://localhost:3306/locadora", "root", "ALUNOS");

            } catch (SQLException ex) {
            } catch (Exception e) {
         
            }       return connection;
        }

    }
}
