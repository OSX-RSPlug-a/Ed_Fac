<%-- 
    Document   : listarUsuario
    Created on : 24/09/2016, 16:13:13
    Author     : Administrador
--%>

<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <title>Usuários Cadastrados</title>
        
        <meta http-equiv="X-UA-Compatible" content="IE=edge">

        <meta name="viewport" content="width=device-width, initial-scale=1">
			
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css" />

        <link href="css/ctn.css" rel="stylesheet">
	
        <link href='fonts/font-lobster.min.css' rel='stylesheet' type='text/css'>
        
        <script src="js/bootstrap.js" type="text/javascript"></script>	
	
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
	
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.13.1/jquery.validate.min.js"></script>

        
        
    </head>
  <body>
        
   <body class="home">

    <div class="container-fluid display-table">

        <div class="row display-table-row">

            <div class="col-md-2 col-sm-1 hidden-xs display-table-cell v-align box" id="navigation">

                <div class="logo">

                    <!--<a hef="#"><img src="images/logoEd01.png" class="hidden-xs hidden-sm"></a>-->

                    <a href="VitoriaVideos.jsp"><h2 style="font-family:'Lobster'" class="hidden-xs hidden-sm">Locadora</h2></a>
                    
                </div>

                <div class="navi">

                    <ul style="list-style-type: none;">

                        <li><a href="#"><i aria-hidden="true"></i><span class="hidden-xs hidden-sm">Usuarios do sistema</span></a></li>

                        <li><a href="FilmeController?action=listaFilme"><i aria-hidden="true"></i><span class="hidden-xs hidden-sm">Locação</span></a></li>

                    </ul>

                </div>

            </div>

            <div class="col-md-10 col-sm-11 display-table-cell v-align">

                <div class="row">

                    <header>

                        <div class="col-md-7">

                            <nav class="navbar-default pull-left">

                                <div class="navbar-header">

                                    <button type="button" class="navbar-toggle collapsed" data-toggle="offcanvas" data-target="#side-menu" aria-expanded="false">

                                        <span class="sr-only">Toggle navigation</span>

                                        <span class="icon-bar"></span>

                                        <span class="icon-bar"></span>

                                        <span class="icon-bar"></span>

                                    </button>

                                </div>

                            </nav>



                        </div>

                        <div class="col-md-5">

                            <div class="header-rightside">

                                <ul class="list-inline header-top pull-right">

                                    <li><a href="#"><i  aria-hidden="true"></i></a></li>

                                    <li>
                                        <a href="#" class="icon-info">
                                            <i aria-hidden="true"></i>

                                        </a>
                                    </li>

                                    <li class="dropdown">

                                        <a href="#" class="dropdown-toggle" data-toggle="dropdown"><img src="" alt="user">

                                            <b class="caret"></b></a>

                                    </li>

                                </ul>

                            </div>

                        </div>

                    </header>
                </div>

                <div class="user-dashboard">

                    <h2>Lista</h2>

                    <div class="row">

                        
        <table border="1" style="box-shadow:2px 2px 4px #000000">
            <thead>
                <tr>
                    <th>Id</th>
                    <th>Nome</th>
                    <th>Email</th>
                    <th>Senha</th>
                    <th colspan="1">Ação</th>
                    <th colspan="1">Ação</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${usuario}" var="usuario">
                    <tr>
                        <td><c:out value="${usuario.id_usu}"/></td>
                        <td><c:out value="${usuario.nome}"/></td>
                        <td><c:out value="${usuario.email}"/></td>
                        <td><c:out value="${usuario.senha}"/></td>
                        <td><a href="LocadoraController?action=editar&id_usu=<c:out value="${usuario.id_usu}"/>">Atualizar</a></td>
                        <td><a href="LocadoraController?action=apagar&id_usu=<c:out value="${usuario.id_usu}"/>">Apagar</a></td>
                    </tr>
                </c:forEach>
            </tbody>            
        </table> 

                    </div>

                </div>

            </div>

        </div>

    </div>
        
        
    </body>
    
    <script>
        $(document).ready(function(){

            $('[data-toggle="offcanvas"]').click(function(){

              $("#navigation").toggleClass("hidden-xs");
            });
          });
      </script>
    
      <script>
      
        $(document).ready(function(){
        
        $('[data-toggle="offcanvas"]').click(function(){
       
        $("#navigation").toggleClass("hidden-xs");
        });
        
        });
      </script>
      
</html>
        

