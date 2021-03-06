<%-- 
    Document   : cadastrarFilme
    Created on : 25/09/2016, 18:19:32
    Author     : Administrador
--%>

<%@page  language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <title>Registrar</title>
    
        <meta http-equiv="X-UA-Compatible" content="IE=edge">

                <meta name="viewport" content="width=device-width, initial-scale=1">

                <link rel="stylesheet" href="css/bootstrap.css" type="text/css" />

                <!--<script src="js/bootstrap.js" type="text/javascript"></script>-->

                <script src="func.js" type="text/javascript">

                <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.13.1/jquery.validate.min.js"></script>
    
                <script language="javascript" type="text/javascript"> 
                function windowClose() {                      
                window.close();
} 
</script>
    
    </head>
  <body>
        <form method="POST" action="FilmeController">
        <div class="container">
                        
                        <h3>Cadastrar Filme</h3>
    
                        <hr>
                            <div class="row">
                        
                                <div class="col-lg-6">
            
                                                             
                                        <label>Nome do Filme</label>
                                            
                                            <div class="input-group"> 

                                                <span class="input-group-addon"><span class="glyphicon glyphicon-user"></span></span>
                                            
                                                <input type="text" class="form-control" name="nome"  placeholder="digite o nome do filme" required value="<c:out value="${filme.nome}"/>"/>
                                            
                                                
                                            </div>
                                    </div>
            
                                    <div class="form-group">
                                        
                                        <label>Sinopse</label>
                
                                            <div class="input-group"> 

                                                <span class="input-group-addon"><span class="glyphicon glyphicon-envelope"></span></span>
                                    
                                                    <input type="text" class="form-control" name="sinopse" id="Email" placeholder="Digite a Sinopse" required value="<c:out value="${filme.sinopse}"/>"/>
                
                                            </div>
                                    </div>
            
                                    <div class="form-group">
                                            
                                        <label>Valor</label>
                
                                            <div class="input-group"> 

                                                <span class="input-group-addon"><span class="glyphicon glyphicon-envelope"></span></span>
                                    
                                                    <input type="text" class="form-control" name="valor" id="valor" placeholder="Digite o Valor" required value="<c:out value="${filme.valor}"/>"/>
                
                                            </div>
                                        
                
                                    </div>
                                                    
                                                     <div class="form-group">
                                            
                                        <label>Genero</label>
                
                                            <div class="input-group"> 

                                                <span class="input-group-addon"><span class="glyphicon glyphicon-envelope"></span></span>
                                    
                                                    <input type="text" class="form-control" name="genero" id="genero" placeholder="Digite o Genero" required value="<c:out value="${filme.genero}"/>"/>
                
                                            </div>
                                        
                
                                    </div>                                                    

                                    <input type="submit" name="submit" id="submit" value="Cadastrar" class="btn btn-primary pull-right" onclick="self.close()">
            
                            
                            </div>
        </div>
    </div>
        </form>    
    </body>
</html>
