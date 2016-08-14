<html><head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script type="text/javascript" src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>
    <script type="text/javascript" src="http://netdna.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
    <link href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="http://pingendo.github.io/pingendo-bootstrap/themes/default/bootstrap.css" rel="stylesheet" type="text/css">
  </head><body>
    <div class="navbar navbar-default navbar-fixed-top">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-ex-collapse">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
        </div>
        <div class="collapse navbar-collapse" id="navbar-ex-collapse">
          <ul class="nav navbar-nav navbar-right">
            <li class="active">
              <a href="Main.jsp">Home</a>
            </li>
            <li>
              <a href="Login.jsp">Logout</a>
            </li>
          </ul>
        </div>
      </div>
    </div>
    <div class="section" style="margin-top: 7em;">
      <div class="container">
        <div class="jumbotron">
          <h1 class="text-success">Shopping Cart</h1>
          <a href="#"></a>
          <table class="table">
            <thead>
              <tr>
                <th>#</th>
                <th>Product Name</th>
                <th>Description</th>
                <th>Category</th>
                <th>Qty</th>
                <th>Price</th>
                <th></th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <td>1</td>
                <td>Mark</td>
                <td>Otto</td>
                <td>Boots</td>
                <td>
                  <input type="integer" class="form-control" placeholder="1" style="width:50px">
                </td>
                <td>$6990.00</td>
                <td>
                  <i class="fa fa-2x fa-fw fa-trash"></i>
                </td>
              </tr>
              <tr>
                <td>2</td>
                <td>Jacob</td>
                <td>Thornton</td>
                <td>Clothes</td>
                <td>
                  <input type="integer" class="form-control" placeholder="1" style="width:50px">
                </td>
                <td>$829.00</td>
                <td>
                  <i class="fa fa-2x fa-fw fa-trash"></i>
                </td>
              </tr>
              <tr>
                <td>3</td>
                <td>Larry</td>
                <td>the Bird</td>
                <td>Boots</td>
                <td>
                  <input type="integer" class="form-control" placeholder="1" style="width:50px">
                </td>
                <td>$6990.00</td>
                <td>
                  <i class="fa fa-2x fa-fw fa-trash"></i>
                </td>
              </tr>
              <tr>
                <td>4</td>
                <td>Larry</td>
                <td>the Bird</td>
                <td>Boots</td>
                <td>
                  <input type="integer" class="form-control" placeholder="1" style="width:50px">
                </td>
                <td>$6990.00</td>
                <td>
                  <i class="fa fa-2x fa-fw fa-trash"></i>
                </td>
              </tr>
            </tbody>
          </table>
          <hr>
          <div class="section">
            <div class="container">
              <div class="row">
                <div class="col-md-6">
                  <h3>Total</h3>
                </div>
                <div class="col-md-6">
                  <h3></h3>
                  <h3 class="text-right">$1000.00</h3>
                </div>
              </div>
            </div>
          </div>
          <a class="btn btn-large btn-lg btn-success">Checkout</a>
        </div>
      </div>
    </div>
  

</body></html>