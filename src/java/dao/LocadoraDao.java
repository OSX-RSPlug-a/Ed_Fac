/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import modelo.Usuario;
import modelo.Filme;

/**
 *
 * @author GueGui
 */
public class LocadoraDao {
    private Connection connection;
    
    public LocadoraDao() {
        connection = new Conexao().getConnection();    
    }
    public void adicionarUsuario(Usuario u){
        try {
            PreparedStatement preparedStatement = connection.prepareStatement("insert into usuario(nome,email,senha) values (?,?,?)");
            preparedStatement.setString(1, u.getNome());
            preparedStatement.setString(2, u.getEmail());
            preparedStatement.setString(3, u.getSenha());
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
    
     public void excluirUsuario(int id){
        try {
            PreparedStatement preparedStatement = connection.prepareStatement("delete from usuario where id_usu=?");
            preparedStatement.setInt(1, id);
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
     
      public void atualizarUsuario(Usuario u){
        try {
            PreparedStatement preparedStatement = connection.prepareStatement("update usuario set usuario=?, nome=?, email=?, senha=?" + "where id_usu=?");
            preparedStatement.setString(1, u.getNome());
            preparedStatement.setString(2, u.getEmail());
            preparedStatement.setString(3, u.getSenha());
            preparedStatement.setInt(4, u.getId_usu());
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
    public List<Usuario> listarUsuario(){
        List<Usuario> users = new ArrayList<Usuario>();
        try {
            Statement statement = connection.createStatement();
            ResultSet rs = statement.executeQuery("Select * from usuario");
            while(rs.next()) {
                Usuario u = new Usuario();
                u.setId_usu(rs.getInt("id_usu"));
                u.setNome(rs.getString("nome"));
                u.setSenha(rs.getString("senha"));
                u.setEmail(rs.getString("email"));
                users.add(u);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return users;
    }
        public Usuario buscarUsuarioPorId(int id){
            Usuario u = new Usuario();
            try {
            PreparedStatement preparedStatement = connection.prepareStatement("select * from usuario where id_usu=?");
            preparedStatement.setInt(1, id);
            ResultSet rs = preparedStatement.executeQuery();
            if (rs.next()){
                u.setId_usu(rs.getInt("id_usu"));
                u.setNome(rs.getString("nome"));
                u.setSenha(rs.getString("senha"));
                u.setEmail(rs.getString("email"));    
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
            return u;
    }
 
  
}


