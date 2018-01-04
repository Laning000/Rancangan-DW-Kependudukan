<br><br><br>                                
<!-- Grid column -->
<div class="col-md-12 mb-r">
    <a href="index.php?me=sd&&menu=pndidikan"><button type="button" class="btn btn-rounded btn-amber"><i class="fa fa-users pr-2" aria-hidden="true"></i>SD</button></a>
    <a href="index.php?me=smp&&menu=pendidikan"><button type="button" class="btn btn-rounded btn-brown"><i class="fa fa-users  pr-2" aria-hidden="true"></i>SMP/SLTP</button></a>
    <a href="index.php?me=sma&&menu=pendidikan"><button type="button" class="btn btn-rounded btn-mdb"><i class="fa fa-users pr-2" aria-hidden="true"></i>SMA/SLTA</button></a>
    <a href="index.php?me=s1&&menu=pendidikan"><button type="button" class="btn btn-rounded btn-default"><i class="fa fa-users pr-2" aria-hidden="true"></i>S1</button></a>
    <a href="index.php?me=s2&&menu=pendidikan"><button type="button" class="btn btn-rounded btn-primary"><i class="fa fa-users pr-2" aria-hidden="true"></i>S2</button></a>
     <a href="index.php?me=s3&&menu=pendidikan"><button type="button" class="btn btn-rounded btn-success"><i class="fa fa-users pr-2" aria-hidden="true"></i>S3</button></a>
</div>
<!-- Grid column -->

<?php

    include ("config.php");
    $var=$_GET['me'];

    if ($var=="sd")
    {
        include("sd.php");
    }
    else if($var=="smp")
    {
        include("smp.php");
    }
    else if($var=="sma")
    {
        include("sma.php");
    }
    else if($var=="s1")
    {
        include("s1.php");
    }
    else if($var=="s2")
    {
        include("s2.php");
    }
    else if($var=="s3")
    {
        include("s3.php");
    }
    else
    {
        include("sma.php");
    }

?>

<h1><?=$judul ?></h1>
<!-- HTML -->
<div id="chartdiv"></div>
