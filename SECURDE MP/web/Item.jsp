<%@page import="modelz.Product"%>
<html><head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script type="text/javascript" src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>
    <script type="text/javascript" src="http://netdna.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
    <link href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="styles.css" rel="stylesheet" type="text/css">
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
          <form>
            <ul class="nav navbar-nav navbar-right">
              <li class="active">
                <a href="Main.jsp" type="submit">Home</a>
              </li>
              <li>
                <a href="Login.jsp" type="submit">Logout</a>
              </li>
              <li>
                <a href="ShoppingCart.jsp"><i class="fa fa-2x fa-fw fa-drupal"></i></a>
              </li>
            </ul>
          </form>
          <form class="navbar-form navbar-left text-center" role="search" style="margin-top:1em">
            <div class="form-group">
              <input type="text" class="form-control" placeholder="Search">
            </div>
            <button type="submit" class="btn btn-default" >Submit</button>
          </form>
        </div>
      </div>
    </div>
    <div class="section">
      <div class="section size-control" id="display-specific-item">
        <div class="container size-control-2">
          <div class="row">
            <div class="col-md-12">
              <div class="section sub-size-control">
                <div class="container">
                  <div class="row">
                    <div class="col-md-6">
                        <%
                            
                            Product product = (Product) session.getAttribute("Product");
                            
                            String name = product.getName();
                            String desc = product.getDescription();
                            String price = Double.toString(product.getPrice());
                            String image = "images\\" +product.getImage();
                        %>
                      <img src="<%=image%>" class="center-block img-responsive sub-size-control">
                    </div>
                    <form class="form-horizontal" role="form" action="AddToCartServlet" method="POST">
                        
                      <div class="col-md-6 sub-size-control text-left">
                          <h1 class="custom-font-color"><input type="text" name="productName" value="<%=name%>" readonly></h1>
                        <h3 class="custom-font-color"><input type="text" name="name2" value="Red Falcon" readonly></h3>
                        <p class="custom-font-color"><%=desc%></p>
                        <div class="row">
                          <div class="col-md-2 text-left">
                            <input class="btn btn-success" type="submit" value="Purchase">
                          </div>
                          <div class="col-md-3 text-left">
                            <input type="integer" value="1" name="quantity" width="1em" class="form-control">
                          </div>
                          <div class="col-md-7">
                           <input type="text" name="price" value="<%=price%>" readonly>
                          </div>
                        </div>
                      </div>
                    </form>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="container" style="margin-top:3em">
        <div class="row">
          <div class="col-md-12">
            <div class="panel panel-primary">
              <div class="panel-heading">
                <h3 class="panel-title text-primary">Kaye Solemon</h3>
              </div>
              <div class="panel-body">
                <p>I love this product so much!</p>
              </div>
            </div>
            <div class="panel panel-primary">
              <div class="panel-heading">
                <h3 class="panel-title">Panel title</h3>
              </div>
              <div class="panel-body">
                <p>Panel content</p>
              </div>
            </div>
            <div class="panel panel-primary">
              <div class="panel-heading">
                <h3 class="panel-title">Panel title</h3>
              </div>
              <div class="panel-body">
                <p>Panel content</p>
              </div>
            </div>
            <div class="panel panel-primary">
              <div class="panel-heading">
                <h3 class="panel-title">Panel title</h3>
              </div>
              <div class="panel-body">
                <p>Panel content</p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="section section-primary inputAreaBack">
      <form>
        <div class="container">
          <div class="form-group">
            <label for="exampleTextarea">Comments
              <br>
            </label>
            <textarea id="exampleTextarea" rows="3" class="form-control"></textarea>
          </div>
          <div class="row">
            <div class="col-md-12">
              <a class="btn btn-success" type="submit">Submit</a>
            </div>
          </div>
        </div>
      </form>
    </div>
    <footer class="section section-primary footer">
      <div class="container">
        <div class="row">
          <div class="col-sm-6">
            <h1>Footer header</h1>
            <p>Lorem ipsum dolor sit amet, consectetur adipisici elit,
              <br>sed eiusmod tempor incidunt ut labore et dolore magna aliqua.
              <br>Ut enim ad minim veniam, quis nostrud</p>
          </div>
          <div class="col-sm-6">
            <p class="text-info text-right">
              <br>
              <br>
            </p>
            <div class="row">
              <div class="col-md-12 hidden-lg hidden-md hidden-sm text-left">
                <a href="#"><i class="fa fa-3x fa-fw fa-instagram text-inverse"></i></a>
                <a href="#"><i class="fa fa-3x fa-fw fa-twitter text-inverse"></i></a>
                <a href="#"><i class="fa fa-3x fa-fw fa-facebook text-inverse"></i></a>
                <a href="#"><i class="fa fa-3x fa-fw fa-github text-inverse"></i></a>
              </div>
            </div>
            <div class="row">
              <div class="col-md-12 hidden-xs text-right">
                <a href="#"><i class="fa fa-3x fa-fw fa-instagram text-inverse"></i></a>
                <a href="#"><i class="fa fa-3x fa-fw fa-twitter text-inverse"></i></a>
                <a href="#"><i class="fa fa-3x fa-fw fa-facebook text-inverse"></i></a>
                <a href="#"><i class="fa fa-3x fa-fw fa-github text-inverse"></i></a>
              </div>
            </div>
          </div>
        </div>
      </div>
    </footer>
  

</body></html>