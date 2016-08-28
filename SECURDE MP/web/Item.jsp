<%@page import="modelz.Product"%>
<html><head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script type="text/javascript" src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>
    <script type="text/javascript" src="http://netdna.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
    <link href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="styles.css" rel="stylesheet" type="text/css">
  </head><body style="background: #399494; /* fallback for old browsers */
background: -webkit-linear-gradient(to left, #83eec5 , #399494); /* Chrome 10-25, Safari 5.1-6 */
background: linear-gradient(to left, #83eec5 , #399494); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */">&gt;
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
                          <h1 class="custom-font-color"><%=name%></h1>
                          <%
                              request.setAttribute("productName", name);
                          %>
                        <p class="custom-font-color"><%=desc%></p>
                        <div class="row">
                          <div class="col-md-2 text-left">
                            <input class="btn btn-success" type="submit" value="Purchase" style="background-color:317373;  color:white;  border-color:transparent;">
                          </div>
                          <div class="col-md-3 text-left">
                            <input value="1" width="1em" class="form-control" name="quantity">
                          </div>
                          <div class="col-md-7">
                              <p style="font-size:36px; color:white;" contenteditable="true" class="text-right" ><%=price%></p>
                              <%
                                  request.setAttribute("price", price);
                              %>
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
            <div class="jumbotron" style="opacity:0.9">
              <form>
                <h3>Kaye Solomon</h3>
                <hr>
                <h4>LOVE EM!</h4>
                <br>
              </form>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="section section-primary inputAreaBack" style="opacity:0.85">
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
              <button type="submit" class="btn btn-success" style="background-color:317373;  color:white;  border-color:transparent;">Submit</button>
            </div>
          </div>
        </div>
      </form>
    </div>
    <footer class="section section-primary footer" style="background: #399494; /* fallback for old browsers */
background: -webkit-linear-gradient(to left, #83eec5 , #399494); /* Chrome 10-25, Safari 5.1-6 */
background: linear-gradient(to left, #83eec5 , #399494); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */">
      <div class="container">
        <div class="row">
          <div class="col-sm-6">
            <h1>Talaria</h1>
            <p>Visit Us
              <br>facebook/talaria</p>
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
              <a href="Main.jsp" type="submit">Home</a>
            </li>
            <li>
              <form action="LogoutServlet" method="POST" >
                <input type="submit" value="Logout">
                  </form>
            </li>
            <li>
              <a href="ShoppingCart.jsp"><i class="fa fa-2x fa-fw fa-drupal"></i></a>
            </li>
          </ul>
          <form class="navbar-form navbar-left" role="search">
            <div class="form-group">
              <input type="text" class="form-control" placeholder="Search">
            </div>
            <button type="submit" class="btn btn-default">Submit</button>
          </form>
        </div>
      </div>
    </div>
  

</body></html>