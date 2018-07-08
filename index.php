<html>
<head>
<title>Tugas UAS</title>
<link href="css/style_2.css" type="text/css" rel="stylesheet">
<link href="css/style.css" type="text/css" rel="stylesheet">
<link rel="shortcut icon" href="image/favicon2.png">
<meta charset="UTF-8">
<meta name="description" content="TUGAS">
<meta name="keywords" content="HTML,CSS,XML,JavaScript">
<meta name="author" content="kelvin">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<style type="text/css">
   .left    { text-align: left;}
   .right   { text-align: right;}
   .center  { text-align: center;}
   .justify { text-align: justify;}
     
img {
    opacity: 0.5;
    filter: alpha(opacity=50);
}

img:hover {
    opacity: 1.0;
    filter: alpha(opacity=100);
}
</style>

<script type="text/javascript">
    //set timezone
    <?php date_default_timezone_set('Asia/Jakarta'); ?>
    //buat object date berdasarkan waktu di server
    var serverTime = new Date(<?php print date('Y, m, d, H, i, s, 0'); ?>);
    //buat object date berdasarkan waktu di client
    var clientTime = new Date();
    //hitung selisih
    var Diff = serverTime.getTime() - clientTime.getTime();    
    //fungsi displayTime yang dipanggil di bodyOnLoad dieksekusi tiap 1000ms = 1detik
    function displayServerTime(){
        //buat object date berdasarkan waktu di client
        var clientTime = new Date();
        //buat object date dengan menghitung selisih waktu client dan server
        var time = new Date(clientTime.getTime() + Diff);
        //ambil nilai jam
        var sh = time.getHours().toString();
        //ambil nilai menit
        var sm = time.getMinutes().toString();
        //ambil nilai detik
        var ss = time.getSeconds().toString();
        //tampilkan jam:menit:detik dengan menambahkan angka 0 jika angkanya cuma satu digit (0-9)
        document.getElementById("clock").innerHTML = (sh.length==1?"0"+sh:sh) + ":" + (sm.length==1?"0"+sm:sm) + ":" + (ss.length==1?"0"+ss:ss);
    }
</script>
<style>
  body{
  background: white;
  }
</style>
</head>
<body onload="setInterval('displayServerTime()', 1000);">
<center>
<div id="latar">
<div id="banner">
<img src="image/cinema.png" width="10%" height="100%" >&nbsp;&nbsp;<img src="image/box.png" width="5%" height="100%" >&nbsp;&nbsp;<img src="image/universal.png" width="5%" height="100%" >
&nbsp;&nbsp;<img src="image/paramount.png" width="4%" height="100%" > &nbsp;&nbsp; <p class="left">
<?php
        $tanggal= mktime(date("m"),date("d"),date("Y"));
        echo "Tanggal : ".date("d-M-Y", $tanggal)."";
        date_default_timezone_set('Asia/Jakarta');
        $jam=date("H:i:s");
       // echo "| Pukul : <b>". $jam." "."</b>";
		?> 
<span id="clock"><?php print date(' H:i:s'); ?></span>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<font face="arial">Call Center : 085xxxxxxxx || Website : example.@gmail.com || Alamat : Unknow Address.</font></p>
</div>
<div id="subbanner">
<img src="image/head.png" width="100%" height="100%">
</div>
<div id="logo">
<br>
<center>
<image src="image/cover.jpg" width="100%" height="100%">
</div>
<div id="loginform">
  <form action="proses/login.php" method="POST">
    <input type="text" name="email" class="login-input" placeholder="user name" autofocus>
    <input type="password" name="password" class="login-input" placeholder="Password">
    <input type="submit" value="login" name="login" class="login-submit">
	<input type="submit" value="reset" name="reset" class="login-submit">
  </form> 
 
<div id="content">
<b><font color="white"><!--no name--></font></b>
<center>
<ul id='css3-slider'>
    <li>
        <input type='radio' id='s1' name='num' checked='true' />
        <label for='s1'>1</label>
        <a href='/'>
            <img src='image/1.jpg' />
            <span>Avenger Age Of Ultron</span>
        </a>
    </li>
    <li>
        <input type='radio' id='s2' name='num' />
        <label for='s2'>2</label>
        <a href='/'>
            <img src='image/2.jpg' />
            <span>The Dark Knight</span>
        </a>
    </li>
    <li>
        <input type='radio' id='s3' name='num' />
        <label for='s3'>3</label>
        <a href='/'>
            <img src='image/3.jpg' />
            <span>Lego Movie</span>
        </a>
    </li>
    <li>
        <input type='radio' id='s4' name='num' />
        <label for='s4'>4</label>
        <a href='/'>
            <img src='image/4.jpg' />
            <span>Thor And Ragnarok</span>
        </a>
    </li>
    <li>
        <input type='radio' id='s5' name='num' />
        <label for='s5'>5</label>
        <a href='/'>
           <img src='image/5.jpg' />
            <span>Deadpool</span>
        </a>
    </li>
</ul>
</div>  
</div>
<div id="subfooter">
<img src="image/head.png" width="100%" height="100%">
</div>
</body>
</html>

