<%-- 
    Document   : VitoriaVideos
    Created on : 23/09/2016, 01:43:25
    Author     : w
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <title>Vitória Vídeos</title>
        
        <meta http-equiv="X-UA-Compatible" content="IE=edge">

        <meta name="viewport" content="width=device-width, initial-scale=1">
			
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css" />

        <link href="css/ctn.css" rel="stylesheet">
	
        <script src="js/bootstrap.js" type="text/javascript"></script>
	
        <link href='fonts/font-lobster.min.css' rel='stylesheet' type='text/css'>
	
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
	
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.13.1/jquery.validate.min.js"></script>

    </head>
    
    <header role="banner" class="navbar navbar-fixed-top navbar-inverse" >

      	<div class="container">

        	<div class="navbar-header">

          		<button data-toggle="collapse-side" data-target=".side-collapse" data-target-2=".side-collapse-container" type="button" class="navbar-toggle pull-left"><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button>

        	</div>

        	<div class="navbar-inverse side-collapse in">

          		<nav role="navigation" class="navbar-collapse">

                            <ul class="nav navbar-nav">

                                <li><a href="#"><h1 style="font-family:'Lobster'">VitoriaVideos</h1></a></li>

                            </ul>

                            <ul class="nav navbar-nav navbar-right">

                                <li><a href="cadastrarFilme.jsp" onclick="window.open(this.href,'targetWindow','toolbar=no,location=no,status=no,menubar=no,scrollbars=yes,resizable=yes,width=480,height=500');return false;"><h3>Cadastrar Filme</h3></a></li>

                  		<li><a href="FilmeController?action=listaFilme"><h3>Listar Filmes</h3></a></li>

                                <!--Test1 <li><a href="listarFilmes.jsp"><h3>Listar Filmes</h3></a></li>-->
                                
                               <li><a href="Regist.jsp" onclick="window.open(this.href,'targetWindow','toolbar=no,location=no,status=no,menubar=no,scrollbars=yes,resizable=yes,width=480,height=500');return false;"><h3>Cadastrar Usuário</h3></a></li>
                                
                               <li><a href="LocadoraController?action=listaUsuario"><h3>Listar Usuário</h3></a></li>

                               <!--Test2 <li><a href="listarUsuario.jsp"><h3>Listar Usuário</h3></a></li>-->

                            </ul>
          		</nav>
        	</div>
      	</div>
        
    </header>
    
    <body>
       
     <div class="jumbotron text-center">

				<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">

				<!-- Indicators-->
                                <ol class="carousel-indicators">

					<li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>

					<li data-target="#carousel-example-generic" data-slide-to="1"></li>

					<li data-target="#carousel-example-generic" data-slide-to="2"></li>

					<li data-target="#carousel-example-generic" data-slide-to="3"></li>

					<li data-target="#carousel-example-generic" data-slide-to="4"></li>

					<li data-target="#carousel-example-generic" data-slide-to="5"></li>

                                </ol>

  			<!-- Wrapper for slides-->
  			<div class="carousel-inner">

	  			<div class="item active">

						<a href="#home"><img src="vd-img/01_1440x380.jpg" alt="..." class="fill"></a>

						<div class="carousel-caption">

						</div>

					</div>

				<div class="item">

				  <a href="#home"><img src="vd-img/02_1440x380.jpg" alt="..." class="fill"></a>

					<div class="carousel-caption">

					</div>

				</div>

				<div class="item">

					<a href="#home"><img src="vd-img/03_1440x380.jpg" alt="..." class="fill"></a>

					<div class="carousel-caption">

      		</div>

				</div>

				<div class="item">

					<a href="#home"><img src="vd-img/04_1440x380.jpg" alt="..." class="fill"></a>

					<div class="carousel-caption">

      		</div>

				</div>

				<div class="item">

					<a href="#home"><img src="vd-img/05_1440x380.jpg" alt="..." class="fill"></a>

					<div class="carousel-caption">

      		</div>

				</div>

				<div class="item">

					<a href="#home"><img src="vd-img/06_1440x380.jpg" alt="..." class="fill" ></a>

					<div class="carousel-caption">

      		</div>

				</div>


	</div>

  <!-- Controls-->
  <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left"></span>
  </a>

	<a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right"></span>
  </a>

	</div>

</div>

			<div class="container">

					<!-- row 1 -->
  				<div class="row">

						<h2>Lançamentos de Ficção</h2>

						<div class="col-sm-4">

							<div class="flip-container" ontouchstart="this.classList.toggle('hover');">

								<div class="flipper">

									<!-- front content -->
									<div class="front" style="background: url(vd-img/flm02.jpg) 0 0 no-repeat;" width:"236px" height:"326px">

										<span class="name">Test</span>

									</div>

									<div class="back" style="background:#f8f8f8;">

										<div class="back-logo"></div>

										<div class="back-title"><p>Alien</p></div>

										<p>Sinopse: Developer, MooTools &amp; jQuery Consultant, Javascript Fanatic, CSS Tinkerer, PHP dev, and Bootstrap lover.</p>

										<!--<center><button class="outline">Rent</button></center>-->

									</div>
								</div>
							</div>

	</div><!-- finish the col-sm-4 -->


	<div class="col-sm-4">

		<div class="flip-container" ontouchstart="this.classList.toggle('hover');">

			<div class="flipper">

				<!-- front content -->
				<div class="front" style="background: url(vd-img/flm13.jpg) 0 0 no-repeat;">

					<span class="name"></span>

				</div>

				<div class="back" style="background:#f8f8f8;">

					<div class="back-logo"></div>

					<div class="back-title"><p>Titulo do filme</p></div>

					<p>Sinopse: A Web Developer, MooTools &amp; jQuery Consultant, Javascript Fanatic, CSS Tinkerer, PHP dev, and Bootstrap lover.</p>

					<center><button class="outline">Rent</button></center>

				</div>
			</div>
		</div>

</div><!-- finish the col-sm-4 -->


<div class="col-sm-4">

	<div class="flip-container" ontouchstart="this.classList.toggle('hover');">

		<div class="flipper">

			<!-- front content -->
			<div class="front" style="background: url(vd-img/flm11.jpg) 0 0 no-repeat;">

				<span class="name"></span>

			</div>

			<div class="back" style="background:#f8f8f8;">

				<div class="back-logo"></div>

				<div class="back-title"><p>Titulo do filme</p></div>

				<p>Sinopse: A Web Developer, MooTools &amp; jQuery Consultant, Javascript Fanatic, CSS Tinkerer, PHP dev, and Bootstrap lover.</p>

				<center><button class="outline">Rent</button></center>

			</div>
		</div>
	</div>

</div><!-- finish the col-sm-4 -->

</div><!-- finish row 1 -->

					<br><br><br>

					<!-- row 2 -->
					<div class="row">

						<h2>Lançamentos de Ação</h2>

						<div class="col-sm-4">

							<div class="flip-container" ontouchstart="this.classList.toggle('hover');">

								<div class="flipper">

									<!-- front content -->
									<div class="front" style="background: url(vd-img/flm04.jpg) 0 0 no-repeat;" width:"236px" height:"326px">

										<span class="name"></span>

									</div>

									<div class="back" style="background:#f8f8f8;">

										<div class="back-logo"></div>

										<div class="back-title"><p>Titulo do filme</p></div>

										<p>Sinopse: A Web Developer, MooTools &amp; jQuery Consultant, Javascript Fanatic, CSS Tinkerer, PHP dev, and Bootstrap lover.</p>

										<center><button class="outline">Rent</button></center>

									</div>
								</div>
							</div>

	</div><!-- finish the col-sm-4 -->


	<div class="col-sm-4">

		<div class="flip-container" ontouchstart="this.classList.toggle('hover');">

			<div class="flipper">

				<!-- front content -->
				<div class="front" style="background: url(vd-img/flm21.jpg) 0 0 no-repeat;">

					<span class="name"></span>

				</div>

				<div class="back" style="background:#f8f8f8;">

					<div class="back-logo"></div>

					<div class="back-title"><p>Titulo do filme</p></div>

					<p>Sinopse: A Web Developer, MooTools &amp; jQuery Consultant, Javascript Fanatic, CSS Tinkerer, PHP dev, and Bootstrap lover.</p>

					<center><button class="outline">Rent</button></center>

				</div>
			</div>
		</div>

</div><!-- finish the col-sm-4 -->


<div class="col-sm-4">

	<div class="flip-container" ontouchstart="this.classList.toggle('hover');">

		<div class="flipper">

			<!-- front content -->
			<div class="front" style="background: url(vd-img/flm20.jpg) 0 0 no-repeat;">

				<span class="name"></span>

			</div>

			<div class="back" style="background:#f8f8f8;">

				<div class="back-logo"></div>

				<div class="back-title"><p>Titulo do filme</p></div>

				<p>Sinopse: A Web Developer, MooTools &amp; jQuery Consultant, Javascript Fanatic, CSS Tinkerer, PHP dev, and Bootstrap lover.</p>

				<center><button class="outline">Rent</button></center>

			</div>
		</div>
	</div>

</div><!-- finish the col-sm-4 -->

				</div><!-- finish row 2 -->

					<br><br><br>

					<!-- row 3 -->
					<div class="row">

    	     		<h2>Lançamentos Infantis</h2>

							<div class="col-sm-4">

								<div class="flip-container" ontouchstart="this.classList.toggle('hover');">

									<div class="flipper">

										<!-- front content -->
										<div class="front" style="background: url(vd-img/flm19.jpg) 0 0 no-repeat;" width:"236px" height:"326px">

											<span class="name"></span>

										</div>

										<div class="back" style="background:#f8f8f8;">

											<div class="back-logo"></div>

											<div class="back-title"><p>Titulo do filme</p></div>

											<p>Sinopse: A Web Developer, MooTools &amp; jQuery Consultant, Javascript Fanatic, CSS Tinkerer, PHP dev, and Bootstrap lover.</p>

											<center><button class="outline">Rent</button></center>

										</div>
									</div>
								</div>

		</div><!-- finish the col-sm-4 -->


		<div class="col-sm-4">

			<div class="flip-container" ontouchstart="this.classList.toggle('hover');">

				<div class="flipper">

					<!-- front content -->
					<div class="front" style="background: url(vd-img/flm03.jpg) 0 0 no-repeat;">

						<span class="name"></span>

					</div>

					<div class="back" style="background:#f8f8f8;">

						<div class="back-logo"></div>

						<div class="back-title"><p>Titulo do filme</p></div>

						<p>Sinopse: A Web Developer, MooTools &amp; jQuery Consultant, Javascript Fanatic, CSS Tinkerer, PHP dev, and Bootstrap lover.</p>

						<center><button class="outline">Rent</button></center>

					</div>
				</div>
			</div>

	</div><!-- finish the col-sm-4 -->


	<div class="col-sm-4">

		<div class="flip-container" ontouchstart="this.classList.toggle('hover');">

			<div class="flipper">

				<!-- front content -->
				<div class="front" style="background: url(vd-img/flm12.jpg) 0 0 no-repeat;">

					<span class="name"></span>

				</div>

				<div class="back" style="background:#f8f8f8;">

					<div class="back-logo"></div>

					<div class="back-title"><p>Titulo do filme</p></div>

					<p>Sinopse: A Web Developer, MooTools &amp; jQuery Consultant, Javascript Fanatic, CSS Tinkerer, PHP dev, and Bootstrap lover.</p>

					<center><button class="outline">Rent</button></center>

				</div>
			</div>
		</div>

	</div><!-- finish the col-sm-4 -->

 </div><!-- finish row 3 -->

</div><!-- finish container things -->

<br><br><br><br><br>

	</body>

  <!----------- container Footer ------------>                           
                           <footer class="footer-bs" >

                                <div class="row">

                                    <div class="col-md-3 footer-brand animated fadeInLeft">

                                        <a href="#"><h1 style="font-family:'Lobster'">VitoriaVideos</h1></a>

                                        <br>
                                        
                                        <p>Suspendisse hendrerit tellus laoreet luctus pharetra. Aliquam porttitor vitae orci nec ultricies. Curabitur vehicula, libero eget faucibus faucibus, purus erat eleifend enim, porta pellentesque ex mi ut sem.</p>

                                        <center><p>© 2016</p></center>

                                    </div>                                   

                                    <div class="col-md-4 footer-nav animated fadeInUp">

                                        <h4>Menu —</h4>

                                        <div class="col-md-6">

                                            <ul class="pages">

                                                <li><a href="#">Home</a></li>

                                                <li><a href="#">Movies</a></li>

                                                <li><a href="#">Series</a></li>

                                                <li><a href="#">Kids Zone</a></li>

                                                <li><a href="Regist.jsp">Register</a></li>

                                            </ul>

                                        </div>

                                        <div class="col-md-6">

                                            <ul class="list">

                                                <!--<li><a href="#">About Us</a></li>-->
                                                
                                                <li><a href="#" data-toggle="modal" data-target="#myModal">About Us</a></li>

                                                <li><a href="#">Contacts</a></li>

                                                <li><a href="#">Terms & Condition</a></li>

                                                <li><a href="#">Privacy Policy</a></li>

                                            </ul>

                                        </div>

                                    </div>

                                    <div class="col-md-2 footer-social animated fadeInDown">

                                        <h4>Follow Us</h4>																<ul class="list" style="list-style-type: none;">

                                            <li><a href="#"><img alt="Facebook Icon" border="0" height="30" src="images/social-facebook.png" width="30"></a></li><br>

                                            <li><a href="#"><img alt="Twitter Icon" border="0" height="30" src="images/social-twitter.png" width="30"></a></li><br>

                                            <li><a href="#"><img alt="Youtube Icon" border="0" height="30" src="images/email_social_youtube.png" width="30"></a></li><br>

                                            <li><a href="#"><img alt="Google&#43; Icon" border="0" height="30" src="images/email_social_gplus.png" width="30"></a></li>

                                        </ul>

                                    </div>

                                    <div class="col-md-3 footer-ns animated fadeInRight">

                                        <h4>Newsletter</h4>

                                        <div class="input-group">

                                            <p><input type="text" class="form-control" placeholder="Email@email.com">

                                            <span class="input-group-btn">

                                                <center><button class="btn btn-default" type="button"><span class="glyphicon glyphicon-envelope"></span></button></center>

                                            </span></p>

                                        </div>


                </div>
            </div>
        </footer><!-- finish footer cont -->
                            
        <!-- Modal -->
     <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  
         <div class="modal-dialog">
    
             <div class="modal-content">
      
                 <div class="modal-header">
                     
                     <div class="card">
                       
                         <ul class="list-group list-group-flush">
                                                 
                             <li class="list-group-item">
                                                  
                                 <p><h3><kbd>ED - Logica de Programação I</kbd></h3></p>
                                                      
                                 <p class="card-text">Este projeto foi desenvolvido em Java Web e Bootstrap</p>
                                                                             
                             </li>                     
                       
                             <li class="list-group-item"><h3><kbd>Integrantes:</kbd></h3></li>
                                                          
                             <li class="list-group-item">Diogo</li>
                             
                             <li class="list-group-item">Fernando</li>
                           
                             <li class="list-group-item">Guilherme</li>
                                                  
                             <li class="list-group-item">Gustavo</li>
                         
                             <li class="list-group-item">Jeferson</li>
                                            
                         </ul>
                       
                 </div>
      
                     <div class="modal-footer">
		
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>       
               	
                     </div>
                     
                 </div>
    
             </div>
  
         </div>

     </div> <!-- finish myModal -->
        
   
                     <!--Jquery script -->
                     <script src="js/jquery.js"></script>

		     <!--Bootstrap Core JavaScript -->
		     <script src="js/bootstrap.min.js"></script>

		     <!-- Script to Activate the Carousel -->
		     <script>
		     $('.carousel').carousel({
		         interval: 5000 //changes the speed
		     });
		     </script>

</html>
