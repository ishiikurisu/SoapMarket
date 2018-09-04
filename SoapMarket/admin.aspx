<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="SoapMarket._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <link href="jumbotron.css" rel="stylesheet">
    <title>Soap Market</title>
</head>
<body>
    <!-- Navigation -->
    <nav class="navbar fixed-top navbar-expand-lg navbar-dark bg-dark fixed-top">
        <div class="container">
            <a class="navbar-brand" href="default.aspx">Soap Market</a>
            <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarResponsive">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="cart.aspx">Shopping Cart</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="products.aspx">Products</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="about.aspx">About</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

	<!-- Page Content -->
	<main role="main">
        <div class="container">
            <!-- Example row of columns -->
            <br /><br />
            <h1 class="my-3">Stock</h1>
            <h2>New product</h2>
            <div class="container" id="form-add-stuff">
                <form action="api/new_product.aspx">                    
                    <div class="row">
                        <div class="col-md-6">
                            <input type="text" class="form-control" id="product-name" placeholder="Product name" />
                        </div>
                        <div class="col-md-2">
                             <input type="text" class="form-control" id="product-price" placeholder="$10.00" />
                        </div>
                        <div class="col-md-2">
                             <input type="number" class="form-control" id="product-quantity" />
                        </div>
                        <div class="col-md-2">
                             <button type="submit" class="btn btn-primary">Add</button>
                        </div>
                    </div>
                </form>
            </div>
            <div>
                <h2>All products</h2>
                <div class="container" id="all-products">
                    <p>Loading all available products</p>
                </div>
            </div>
        </div> <!-- /container -->

    </main>

	<!-- Footer -->
	<footer class="py-5 bg-dark">
		<div class="container">
			<p class="m-0 text-center text-white">Copyright &copy; Soap Market 2018</p>
		</div>
	</footer>

    <%-- Scripts --%>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
    <script src="js/home.js"></script>
</body>
</html>
