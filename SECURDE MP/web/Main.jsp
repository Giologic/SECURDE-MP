<%@page import="java.util.ArrayList"%>
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
          <ul class="nav navbar-nav navbar-right">
            <li class="active">
              <a href="#" type="submit">Home</a>
            </li>
            <li>
              <a href="Login.jsp" type="submit">Logout</a>
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
    <div class="section">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <div class="section">
              <div class="container">
                <div class="row">
                  <div class="col-md-4">
                    <ul class="list-group" style="margin-top:3em">
                        <form><button class="list-group-item" type="submit">Boots</button></form>
                        <form><button class="list-group-item" type="submit">Shoes</button></form>
                        <form><button class="list-group-item" type="submit">Sandals</button></form>
                        <form><button class="list-group-item" type="submit">Slippers</button></form>
                    </ul>
                  </div>
                  <div class="col-md-8">
                    <div class="section">
                      <div class="row">
                        <div class="col-md-3">
                            <form action="ViewSpecificProductServlet" method="GET">
                                <%
                                    
                                    ArrayList<Product> products = (ArrayList)request.getAttribute("Products");
                                    for(Product product:products){
                                        String image = "images\\" + product.getImage();
                                        String productName = product.getName();
                                        String description = product.getDescription();
                                        String price = Double.toString(product.getPrice());
                                        
                                %>
                                <a href="#"><img src="<%=image%>" class="img-responsive"></a>
                                <h2><input type="text" value="<%=productName%>" name="productName" readonly></h2>
                          <p><%=description%></p>
                          <p><%=price%></p>
                          <button type="submit" class="btn btn-success">View</button>
                          <% }%>
                            </form>
                        </div>
                        
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="section">
      <div class="container">
        <div class="row">
          <div class="col-md-12 text-center">
            <ul class="pagination pagination-lg">
              <li>
                <a href="#" type="submit">Prev</a>
              </li>
              <li class="active">
                <a href="#" type="submit">1</a>
              </li>
              <li>
                <a href="#" type="submit">2</a>
              </li>
              <li>
                <a href="#" type="submit">3</a>
              </li>
              <li>
                <a href="#" type="submit">4</a>
              </li>
              <li>
                <a href="#" type="submit">5</a>
              </li>
              <li>
                <a href="#" type="submit">Next</a>
              </li>
            </ul>
          </div>
        </div>
      </div>
    </div>
    <footer class="section section-primary footer">
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
  

</body></html>