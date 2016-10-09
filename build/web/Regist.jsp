<%-- 
    Document   : Regist
    Created on : 23/09/2016, 02:13:39
    Author     : w
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
        <form method="POST" action="LocadoraController">
        <div class="container">
                        
                        <h3>Cadastro</h3>
    
                        <hr>
                            <div class="row">
                        
                                <div class="col-lg-6">
            
                                                             
                                        <label>Nome do usuário</label>
                                            
                                            <div class="input-group"> 

                                                <span class="input-group-addon"><span class="glyphicon glyphicon-user"></span></span>
                                            
                                                <input type="text" class="form-control" name="nome"  placeholder="digite o nome de usuário" required value="<c:out value="${usuario.nome}"/>"/>
                                            
                                                
                                            </div>
                                    </div>
            
                                    <div class="form-group">
                                        
                                        <label>Email</label>
                
                                            <div class="input-group"> 

                                                <span class="input-group-addon"><span class="glyphicon glyphicon-envelope"></span></span>
                                    
                                                    <input type="text" class="form-control" name="email" id="Email" placeholder="Digite o email" required value="<c:out value="${usuario.email}"/>"/>
                
                                            </div>
                                    </div>
            
                                    <div class="form-group">
                                            
                                        
                                        <label>Senha</label>
                                            
                                            <div class="input-group"> <span class="input-group-addon">

                                                <span class="glyphicon glyphicon-lock"></span></span>
                                                    
                                                <input type="password" class="form-control" name="senha" id="password" placeholder="Digite a senha" required data-toggle="popover" data-content="Enter Password..." value="<c:out value="${usuario.senha}"/>"/>
                    
                                            </div>
                
                                    </div>

                                        <input type="submit" name="submit" id="submit" value="Cadastrar" class="btn btn-primary pull-right" onclick="self.close()"/>
            </div>
        </div>
    </div>

        </form>    
    </body>
</html>
