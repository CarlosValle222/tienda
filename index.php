<?php include('conn.php'); ?>
<?php include('header.php'); ?>
<?php
session_start();

if (isset($_SESSION['id'])) {
	$query = mysqli_query($conn, "select * from user where userid='" . $_SESSION['id'] . "'");
	$row = mysqli_fetch_array($query);

	if ($row['access'] == 1) {
		header('location:admin/');
	} else {
		header('location:user/');
	}
}
?>

<body>
	<
    <div class="container-all">

        <div class="ctn-form">
            <img src="imagenes/logo.png" alt="" class="logo">
            <h1 class="title">Iniciar sesión</h1>

            <form method="POST" action="login.php">

                <label for="">Usuario:</label>
                <input type="text" name="username" required>
                <label for="">Contraseña</label>
                <input type="password" name="password" required>

                <input type="submit" value="Iniciar Sesión">

            </form>
            <center>
					<?php

					if (isset($_SESSION['msg'])) {
						echo $_SESSION['msg'];
						unset($_SESSION['msg']);
					}
					?>
				</center>

            <span class="text-footer">¿Aún no te has registrado?
                <a href="register.php">Registrate</a>
            </span>
        </div>

        <div class="ctn-text">
            <div class="capa"></div>
            <h1 class="title-description">Lorem ipsum dolor sit amet.</h1>
            <p class="text-description">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolorem, unde! Nostrum voluptate necessitatibus fugit repellat qui perspiciatis quis officiis hic rem voluptates incidunt ea optio ducimus, tempora, eos architecto quisquam.</p>
        </div>

    </div>
	<?php include('script.php'); ?>
</body>

</html>