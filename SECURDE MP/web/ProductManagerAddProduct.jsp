<html><head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script type="text/javascript" src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>
    <script type="text/javascript" src="http://netdna.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
    <link href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="http://pingendo.github.io/pingendo-bootstrap/themes/default/bootstrap.css" rel="stylesheet" type="text/css">
  </head><body>
    <div style="background: #399494; /* fallback for old browsers */
background: -webkit-linear-gradient(to left, #83eec5 , #399494); /* Chrome 10-25, Safari 5.1-6 */
background: linear-gradient(to left, #83eec5 , #399494); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */">
      <div class="navbar navbar-default navbar-static-top" style="opacity:0.95">
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
              <li>
                <a href="ProductManager.jsp">View Products</a>
              </li>
              <li>
                <a href="<%=request.getContextPath()%>/Logout">Logout</a>
              </li>
              <li>
                <a href="#"><i class="fa fa-2x fa-fw fa-drupal"></i></a>
              </li>
            </ul>
          </div>
        </div>
      </div>
      <div>
        <div class="section">
          <div class="container" style="margin-top:3em">
            <div class="jumbotron" style="opacity:0.9; border-radius:0.8">
              <h1 style="color:184a4a">Add Product</h1>
              <hr>
              <form class="form-horizontal" role="form" action="${pageContext.request.contextPath}/AddProduct" method="POST">
                <div class="form-group">
                  <div class="col-sm-2">
                    <label for="inputEmail3" class="control-label">Product Name</label>
                  </div>
                  <div class="col-sm-10">
                    <input type="text" class="form-control" id="inputEmail3" name="product_name" placeholder="Product Name">
                  </div>
                </div>
                <div class="form-group">
                  <div class="col-sm-2">
                    <label for="inputEmail3" class="control-label">Description</label>
                  </div>
                  <div class="col-sm-10">
                    <textarea type="text" class="form-control" id="inputEmail3" name="description" placeholder="Description"></textarea>
                  </div>
                </div>
                <div class="form-group">
                  <div class="col-sm-2">
                    <label for="inputEmail3" class="control-label">Category</label>
                  </div>
                  <div class="btn-group btn-group-lg" style="margin-left:1em;">
                      <select class="selectpicker" name="category">
                          <option value="Shoes">Shoes</option>
                          <option value="Boots">Boots</option>
                          <option value="Sandals">Sandals</option>
                          <option value="Slippers">Slippers</option>
                      </select>
                    
                  </div>
                </div>
              <!--  <div class="form-group">
                  <div class="col-sm-2">
                    <label for="inputPassword3" class="control-label">Quantity</label>
                  </div>
                  <div class="col-sm-10">
                    <input type="text" class="form-control" id="inputPassword3" name="quantity" placeholder="Quantity">
                  </div>
                </div> -->
                <div class="form-group">
                  <div class="col-sm-2">
                    <label for="inputEmail3" class="control-label">Price</label>
                  </div>
                  <div class="col-sm-10">
                    <input type="integer" class="form-control" id="inputEmail3" name="price" placeholder="Price">
                  </div>
                </div>
                <hr>
                <button style="background-color:399494; border-color:transparent" type="submit" class="btn btn-large btn-lg btn-success" href="">Add Product</button>
              </form>
            </div>
          </div>
        </div>
      </div>
    </div>
  

</body></html>