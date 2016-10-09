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
import modelo.Filme;
/**
 *
 * @author aluno
 */
public class FilmeDao {
    private Connection connection;
    
    public FilmeDao() {
        connection = new Conexao().getConnection();    
    }
   public void adicionarFilme(Filme u){
    try {
            PreparedStatement preparedStatement = connection.prepareStatement("insert into filme(nome,sinopse,valor,genero) values (?,?,?,?)");
            preparedStatement.setString(1, u.getNome());
            preparedStatement.setString(2, u.getSinopse());
            preparedStatement.setDouble(3, u.getValor());
            preparedStatement.setString(4, u.getGenero());
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        } 
 }
 
 public void excluirFilme(int id){
        try {
            PreparedStatement preparedStatement = connection.prepareStatement("delete from filme where id_filme=?");
            preparedStatement.setInt(1, id);
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
 
 public void atualizarFilme(Filme u){
        try {
            PreparedStatement preparedStatement = connection.prepareStatement("update filme set fime=?, nome=?, sinopse=?, valor=?, genero=?" + "where id_filme=?");
            preparedStatement.setString(1, u.getNome());
            preparedStatement.setString(2, u.getSinopse());
            preparedStatement.setDouble(3, u.getValor());
            preparedStatement.setString(4, u.getGenero());
            preparedStatement.setInt(5, u.getId_filme());
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
    
  public List<Filme> listarFilme(){
        List<Filme> movies = new ArrayList<Filme>();
        try {
            Statement statement = connection.createStatement();
            ResultSet rs = statement.executeQuery("Select * from filme");
            while(rs.next()) {
                Filme u = new Filme();
                u.setId_filme(rs.getInt("id_filme"));
                u.setNome(rs.getString("nome"));
                u.setSinopse(rs.getString("sinopse"));
                u.setValor(rs.getDouble("valor"));
                u.setGenero(rs.getString("genero"));
                movies.add(u);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return movies;
    }
  
   public Filme buscarFilmePorId(int id){
            Filme u = new Filme();
            try {
            PreparedStatement preparedStatement = connection.prepareStatement("select * from filme where id_filme=?");
            preparedStatement.setInt(1, id);
            ResultSet rs = preparedStatement.executeQuery();
            if (rs.next()){
                u.setId_filme(rs.getInt("id_filme"));
                u.setNome(rs.getString("nome"));
                u.setSinopse(rs.getString("sinopse"));
                u.setValor(rs.getDouble("valor"));                
                u.setGenero(rs.getString("genero"));    
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
            return u;
    }
    }

