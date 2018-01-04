<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>KetenagaKerjaan</title>
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <!-- Material Design Bootstrap -->
    <link href="css/mdb.min.css" rel="stylesheet">
    <!-- Your custom styles (optional) -->
    <link href="css/style.css" rel="stylesheet">
    
    <link rel="stylesheet" href="css/export.css" type="text/css" media="all" />
    
    
</head>

<body>
    <?php
        if(! isset ($_GET['Submit']))
        {
            $_GET['Submit']="";
        }
        if(! isset ($_GET['menu']))
        {
            $_GET['menu']="";
        }
        if(! isset ($_GET['menux']))
        {
            $_GET['menux']="";
        }
        if(! isset ($_GET['men']))
        {
            $_GET['men']="";
        }
        if(! isset ($_GET['me']))
        {
            $_GET['me']="";
        }
	
    ?>

    <!-- Start your project here-->
    
    <!--Main Navigation-->
    <header>

        <nav class="navbar navbar-expand-lg navbar-dark black">
            <div class="container">
                <a class="navbar-brand" href="#"><strong>KetenagaKerjaan</strong></a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav mr-auto">
                        <li class="nav-item">
                            <a class="nav-link" href="index.php?menu=pekerjaan">Status Pekerjaan </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="index.php?menu=pernikahan">Status Pernikahan </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="index.php?menu=pendidikan">Status Pendidikan Terakhir </a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>

        <div class="view hm-black-strong">
            <div class="full-bg-img flex-center">
                <div class="container">
                    <div class="white-text text-center wow fadeInUp">
                        <h2>This Navbar isn't fixed</h2>
                        <h5>When you scroll down it will disappear</h5>
                        <br>
                        <p>Full page intro with background image will be always displayed in full screen mode, regardless of device </p>
                    </div>
                </div>
            </div>
        </div>

    </header>
    <!--Main Navigation-->

    <!--Main Layout-->
    <main class="text-center py-5 mt-3">

        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <?php
                        include ("config.php");
                        $var=$_GET['menu'];

                        if ($var=="pendidikan")
                        {
                            include("pendidikan.php");
                        }
                        else if($var=="pernikahan")
                        {
                            include("pernikahan.php");
                        }
                        else if($var=="pekerjaan")
                        {
                            include("pekerjaan.php");
                        }
                        else
                        {
                            include("pekerjaan.php");
                        }

                    ?>  

                </div>
            </div>
        </div>

    </main>
    <!--Main Layout-->
                
    <!-- /Start your project here-->

    <!-- SCRIPTS -->

    
    <!-- Resources -->
    <script src="js/amcharts.js"></script>
    <script src="js/serial.js"></script>
    <script src="js/export.min.js"></script>
    <script src="js/light.js"></script>
    
     <?php
        include ("config.php");
        $var=$_GET['menu'];

        if ($var=="pendidikan")
        {
            include("pendidikanjs.php");
        }
        else if($var=="pernikahan")
        {
            include("pernikahanjs.php");
        }
        else if($var=="pekerjaan")
        {
            include("pekerjaanjs.php");
        }
        else
        {
            include("pekerjaanjs.php");
        }
    ?>  
        
    <!-- JQuery -->
    <script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
    <!-- Bootstrap tooltips -->
    <script type="text/javascript" src="js/popper.min.js"></script>
    <!-- Bootstrap core JavaScript -->
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
    <!-- MDB core JavaScript -->
    <script type="text/javascript" src="js/mdb.min.js"></script>
</body>

</html>
