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
              <a type="submit" href="ProductManagerAddProduct.jsp">Add Products</a>
            </li>
            <li>
              <a href="#" type="submit">Logout</a>
            </li>
          </ul>
        </div>
      </div>
    </div>
    <div class="section" style="margin-top:5em">
      <div class="container">
        <div class="row">
          <div class="col-md-4">
            <div class="col-md-12">
              <form class="form-horizontal" role="form">
                <div class="form-group">
                  <div class="col-sm-2">
                    <label for="inputEmail3" class="control-label">Keyword
                      <br>
                      <br>
                    </label>
                  </div>
                  <div class="col-sm-10">
                    <input type="email" class="form-control" id="inputEmail3" placeholder="Keyword">
                  </div>
                </div>
                <div class="form-group">
                  <div class="col-sm-2">
                    <label for="inputPassword3" class="control-label">Category</label>
                  </div>
                  <div class="col-sm-10 text-left">
                    <a class="btn btn-lg btn-success dropdown-toggle" data-toggle="dropdown"> Dropdown <span class="fa fa-caret-down"></span></a>
                    <ul class="dropdown-menu" role="menu">
                      <li>
                        <a href="#">Action</a>
                      </li>
                    </ul>
                  </div>
                </div>
                <div class="form-group">
                  <div class="col-sm-2">
                    <label for="inputEmail3" class="control-label">Price</label>
                  </div>
                  <div class="col-sm-10">
                    <a class="btn btn-lg btn-success dropdown-toggle" data-toggle="dropdown"> Dropdown <span class="fa fa-caret-down"></span></a>
                    <ul class="dropdown-menu" role="menu">
                      <li>
                        <a href="#">Action</a>
                      </li>
                    </ul>
                  </div>
                </div>
                <hr style="display: block;
                height: 1px;
                border: 0;
                border-top: 1px solid #ccc;
                margin: 1em 0;
                padding: 0; 
                color:#5acba5">
                <div class="form-group">
                  <a class="btn btn-lg btn-success" style="width:100%">Filter</a>
                </div>
              </form>
            </div>
          </div>
          <div class="col-md-4">
            <table class="table">
              <thead>
                <tr>
                  <th>#</th>
                  <th>Product Name</th>
                  <th>Description</th>
                  <th>Category</th>
                  <th>Qty</th>
                  <th>Price</th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <td>1</td>
                  <td>Mark</td>
                  <td class="active">Otto</td>
                  <td>Boots</td>
                  <td>5</td>
                  <td>6990.00</td>
                  <td>
                    <a href="#"><i class="fa fa-edit fa-fw"></i></a>
                  </td>
                </tr>
                <tr>
                  <td>2</td>
                  <td>Jacob</td>
                  <td>Thornton</td>
                  <td>Clothes</td>
                  <td>5</td>
                  <td>6990.00</td>
                  <td>
                    <a href="#"><i class="fa fa-edit"></i></a>
                  </td>
                </tr>
                <tr>
                  <td>3</td>
                  <td>Larry</td>
                  <td>the Bird</td>
                  <td>Boots</td>
                  <td>5</td>
                  <td>6990.00</td>
                  <td>
                    <a href="#"><i class="fa fa-edit fa-fw"></i></a>
                  </td>
                </tr>
                <tr>
                  <td>4</td>
                  <td>Larry</td>
                  <td>the Bird</td>
                  <td>Boots</td>
                  <td>5</td>
                  <td>6990.00</td>
                  <td>
                    <a href="#"><i class="fa fa-edit fa-fw"></i></a>
                  </td>
                </tr>
              </tbody>
            </table>
          </div>
        </div>
      </div>
    </div>
  

</body></html>