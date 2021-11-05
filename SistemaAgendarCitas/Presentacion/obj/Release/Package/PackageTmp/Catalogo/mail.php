<?php

$nombre = $_POST['Name'];
$correo = $_POST['Email'];
$asunto = $_POST['Subject'];
$mensage = $_POST['Message'];

$to = "cynthia_gabriela@beautylabcg.com";

$hoy = getdate();
$msge = "Fecha: " . $hoy . "\n Nombre:" . $nombre . "\n Email: " . $correo . "\n Asunto: " . $asunto . "\n Mensaje : " . $mensage; 


if(mail('cynthia_gabriela@beautylabcg.com',$asunto, $mensage ,$correo))
	{
        header('Location: https://www.beautylabcg.com');
	}
	else
	{
           header('https://beautylabcg.com/contact.html');
	}





?>



