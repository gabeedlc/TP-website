<?php
    $nombre = $_POST['nombre'];
	$telefono  = $_POST['telefono'];
	$email = $_POST['email'];
    $mensaje = $_POST['mensaje'];
    $conexion = mysqli_connect(
        "localhost",
		"id7006818_gabeedlc",
		"imbatman2018",
        "id7006818_icyra"
    );
    $ic = "INSERT INTO form_contacto
            VALUES (
                NULL,
                '$nombre',
                '$telefono',
                '$email',
                '$mensaje'
            )";

    $asunto = "Hemos recibido su consulta";
    $respuesta = $nombre."<br>Le agradecemos por contactarse con nosotros, responderemos a la brevedad.<br>Atentamente, equipo Icyra";
    $cabeceras = 'From: Icyra Robotica <info@icyra.com.ar>'."\r\n";
    $cabeceras .= "MIME-Version: 1.0\r\n";
    $cabeceras .= "Content-Type: text/html; charset=ISO-8859-1\r\n";

    if($nombre === "" || $email === "" || $mensaje === ""){
        echo "Por favor, complete todos los campos";
    } else {
        //$insertar_comentario
        $ej = mysqli_query($conexion, $ic);
        if($ej) {
            echo "Muchas gracias por su contacto";
            mail($email,$asunto,$respuesta,$cabeceras);
        } else {
            echo "No podemos procesar su solicitud en este momento. Le pedimos vuelva a intentar mas tarde";
        }
    }
?>