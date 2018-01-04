<br><br><br>                                
<!-- Grid column -->
<div class="col-md-12 mb-r">
    <a href="index.php?menux=pns&&menu=pekerjaan"><button type="button" class="btn btn-rounded btn-amber"><i class="fa fa-users pr-2" aria-hidden="true"></i>PNS</button></a>
    <a href="index.php?menux=wiraswasta&&menu=pekerjaan"><button type="button" class="btn btn-rounded btn-brown"><i class="fa fa-users  pr-2" aria-hidden="true"></i>Wiraswasta</button></a>
    <a href="index.php?menux=buruh&&menu=pekerjaan"><button type="button" class="btn btn-rounded btn-blue-grey"><i class="fa fa-users  pr-2" aria-hidden="true"></i>Buruh</button></a>
    <a href="index.php?menux=pengangguran&&menu=pekerjaan"><button type="button" class="btn btn-rounded btn-mdb"><i class="fa fa-users pr-2" aria-hidden="true"></i>Pengangguran</button></a>
</div>
<!-- Grid column -->

<?php

    include ("config.php");
    $var=$_GET['menux'];

    if ($var=="pns")
    {
        include("pns.php");
    }
    else if($var=="wiraswasta")
    {
        include("wiraswasta.php");
    }
    else if($var=="buruh")
    {
        include("buruh.php");
    }
    else if($var=="pengangguran")
    {
        include("pengangguran.php");
    }
    else
    {
        include("pns.php");
    }

    $persen = $tiga+$empat+$lima+$enam+$tuju;
    $tigap=($tiga*100)/$persen;
    $empatp=($empat*100)/$persen;
    $limap=($lima*100)/$persen;
    $enamp=($enam*100)/$persen;
    $tujup=($tuju*100)/$persen;
?>

<h1><?=$judul ?></h1>
<!-- HTML -->
<div id="chartdiv"></div>
