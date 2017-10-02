<!DOCTYPE html>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

    <title>Calculo do IMC</title>

    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom fonts for this template -->
    <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href='https://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800'
      rel='stylesheet' type='text/css'>

    <!-- Custom styles for this template -->
    <link href="css/clean-blog.min.css" rel="stylesheet">
    
  </head>

  <body>

    <!-- Navigation -->
    <nav class="navbar navbar-expand-lg navbar-light fixed-top" id="mainNav">
      <div class="container">
        <a class="navbar-brand" href="http://localhost:9090/imcmvc" style="color: black">Calculo do IMC</a>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav ml-auto">
            <li class="nav-item">
              <a class="nav-link" href="http://localhost:9090/imcmvc" style="color: black">Home</a>
            </li>
          </ul>
        </div>
      </div>
    </nav>

    <!-- Page Header -->
    <header class="masthead" style="background-image: url('img/contact-bg.jpg')">
      <div class="container">
        <div class="row">
          <div class="col-lg-8 col-md-10 mx-auto">
            <div class="page-heading">
              <h1 style="color: black">Calculo do IMC</h1>
              <span class="subheading" style="color: black">A classificação do índice de massa corporal (IMC), pode ajudar a identificar obesidade ou desnutrição em crianças, adolescentes, adultos e idosos.</span>
            </div>
          </div>
        </div>
      </div>
    </header> 

    <!-- Main Content -->
    <header class="masthead" style="background-image: url('img/saude.jpg')">
      <div class="container">
        <div class="row">
          <div class="col-lg-8 col-md-10 mx-auto">
            <div class="page-heading">
              <p>O IMC é determinado pela divisão da massa do indivíduo pelo quadrado de sua altura, em que a massa está em quilogramas
                e a altura em metros.</p>
              <form name="CalcularIMC" id="calcimc">
                <div class="control-group">
                  <div class="input-group input-group-lg">
                    <span class="input-group-addon" >Kg</span>
                    <input type="text" class="form-control" placeholder="Peso" name="peso">
                  </div>
                  <br>
                  <div class="input-group input-group-lg">
                    <span class="input-group-addon" >m²</span>
                    <input type="text" class="form-control" placeholder="Altura" name="altura">
                    <p class="help-block text-danger"></p>
                  </div>
                  <br>
                  <div class="form-group">
                    <button class="btn btn-secondary">Calcular</button>
                  </div>
                </div>
              </form>
    				  <div class="input-group input-group-lg">
               		  <span class="input-group-addon">Resultado</span>
                 		<h1 class="form-control" id="resultado" style ="font-size: 1.5em">${resultado}</h1>
                      </div>
    			
              
            </div>
          </div>
        </div>
      </div>
    </header>

    <header class="masthead" style="background-image: url('img/contact-bg.jpg')">
      <div class="container">
        <div class="row">
          <div class="col-lg-8 col-md-10 mx-auto">
            <div class="page-heading">
                <a href="#">
                    <img class="img-fluid" src="img\tabela-imc.png" alt="">
      
                  </a>      
            </div>
          </div>
        </div>
      </div>
    </header>

    <!-- Footer -->
    <footer>
      <div class="container">
        <div class="row">
          <div class="col-lg-8 col-md-10 mx-auto">
            <p class="copyright text-muted">Copyright &copy; Marcos Ariel 2017</p>
          </div>
        </div>
      </div>
    </footer>

  </body>

  </html>