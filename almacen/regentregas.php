<?php include('session.php'); ?>
<?php include('header.php'); ?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1,maxium-scale=1">
    <title>Document</title>
    <!--Importando libreria line-awesome-->
    <link rel="stylesheet" href="./line-awesome1.3.0/css/line-awesome.min.css">
    <link rel="stylesheet" href="style.css" type="text/css">
</head>
<body>
    <input type="checkbox" id="nav-toggle">
    <div class="sidebar">
        <div class="sidebar-brand">
        <h2><span id="icono" class="lab la-accusoft"></span>App</h2>
        </div>
        
        <div class="sidebar-menu">
            <ul>
                <li>
                    <a href="" class="active"><span class="las la-igloo"></span>
                    <span>Dashboard</span></a>
                </li>

                <li>
                    <a href=""><span class="las la-users"></span>
                    <span>Registro de ventas</span></a>
                </li>

                <li>
                    <a href=""><span class="las la-clipboard-list"></span>
                    <span>Projects</span></a>
                </li>

                <li>
                    <a href=""><span class="las la-shopping-bag"></span>
                    <span>Orders</span></a>
                </li>
                
                <li>
                    <a href=""><span class="las la-receipt"></span>
                    <span>Inventory</span></a>
                </li>
 
                <li>
                    <a href=""><span class="las la-user-circle"></span>
                    <span>Accounts</span></a>
                </li>
                
                <li>
                    <a href=""><span class="las la-clipboard-list"></span>
                    <span>Tasks</span></a>
                </li>
                <li>
                    <a href="logout.php"><span class="las la-power-off"></span>
                    <span>Close</span></a>
                </li>
            </ul>
        </div>

    </div>

<div class="main-content">
    <header>
        <h2>
            <div>
                <label for="nav-toggle">
                    <span class="las la-bars"></span>
                </label>
                Dashboard
            </div>
            </h2>

            <div class="search-wrapper">
                <span class="las la-search"></span>
                <input type="search" placeholder="Search here">
            </div>

    <div class="user-wrapper">
                <img src="img/2.jpg" width="40px" alt="40px">
        <div>
            <h2>Jane Doe</h2>
            <small>Supplier</small>
        </div>
    </div>
    </header>





    --------------------
    <main>
<body>

<div class="container">
<div style="height:50px;"></div>
	<div class="row">
        <div class="col-lg-12">
            <h1 class="page-header">Productos
				<span class="pull-right">
					<button class="btn btn-primary btn-sm" data-toggle="modal" data-target="#addproduct"><i class="fa fa-plus-circle"></i> Añadir Producto</button>
				</span>
			</h1>
        </div>
    </div>
    <div class="row">
        <div class="col-lg-12">
            <table width="100%" class="table table-striped table-bordered table-hover" id="prodTable">
                <thead>
                    <tr>

                        
                        <td>Producto</td>
                        <th>Precio</th>
						<th>Cantidad</th>
						<th>Foto</th>
						<th>Acción</th>
                    </tr>
                </thead>
                <tbody>
				<?php
					$pq=mysqli_query($conn,"select * from product left join category on category.categoryid=product.categoryid where supplierid='".$_SESSION['id']."'");
					while($pqrow=mysqli_fetch_array($pq)){
						$pid=$pqrow['productid'];
					?>
						<tr>
							<td><?php echo $pqrow['product_name']; ?></td>
							<td><?php echo $pqrow['product_price']; ?></td>
							<td><?php echo $pqrow['product_qty']; ?></td>
							<td><img src="../<?php if(empty($pqrow['photo'])){echo "upload/noimage.jpg";}else{echo $pqrow['photo'];} ?>" height="30px" width="30px;"></td>
							<td>
								<button class="btn btn-success btn-sm" data-toggle="modal" data-target="#editprod_<?php echo $pid; ?>"><i class="fa fa-edit"></i> Editar</button>
								<button class="btn btn-danger btn-sm" data-toggle="modal" data-target="#delproduct_<?php echo $pid; ?>"><i class="fa fa-trash"></i> Eliminar</button>
								<?php include('product_button.php'); ?>
							</td>
						</tr>
					<?php
					}
				?>
                </tbody>
            </table>
        </div>
    </div>
</div>
<?php include('script.php'); ?>
<?php include('modal.php'); ?>
<?php include('add_modal.php'); ?>
<script src="custom.js"></script>
</body>
</html>





    </main>
 -------------------------------------------------------------------------------   

</div>
</body>
</html>