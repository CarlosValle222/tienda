<?php include('conn.php'); ?>
<?php include('header.php'); ?>

<div class="container-all">

        <div class="ctn-form">
            <img src="imagenes/logo.png" alt="" class="logo">
            <h1 class="title">Registrarse</h1>

            <form method="POST" action="registro.php">
                <label for="">Nombre:</label>
                <input type="text" name="name" required>
                <label for="">Dirección:</label>
                <input type="text" name="address" required>
                <label for="">Contacto:</label>
                <input type="text" name="contact" required>
                <label for="">Nombre de Usuario:</label>
                <input type="text" name="username" required>
                <label for="">Contraseña:</label>
                <input type="password" name="password" required>

                <input type="submit" value="Registrarse">
                
            </form>

            <span class="text-footer">¿Ya te has registrado?
                <a href="index.php">Iniciar Sesión</a>
            </span>
        </div>

        <div class="ctn-text">
            <div class="capa"></div>
            <h1 class="title-description">Lorem ipsum dolor sit amet.</h1>
            <p class="text-description">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolorem, unde! Nostrum voluptate necessitatibus fugit repellat qui perspiciatis quis officiis hic rem voluptates incidunt ea optio ducimus, tempora, eos architecto quisquam.</p>
        </div>

    </div>