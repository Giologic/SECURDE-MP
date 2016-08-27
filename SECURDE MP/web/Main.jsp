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
    <div style="background: #399494; /* fallback for old browsers */
background: -webkit-linear-gradient(to left, #83eec5 , #399494); /* Chrome 10-25, Safari 5.1-6 */
background: linear-gradient(to left, #83eec5 , #399494); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */">&gt;
      <div class="navbar navbar-default navbar-fixed-top" style="opacity:0.9">
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
                <a href="<%=request.getContextPath()%>/Logout">Logout</a>
              </li>
              <li>
                <a href="ShoppingCart.jsp"><i class="fa fa-2x fa-fw fa-drupal"></i></a>
              </li>
            </ul>
            <form class="navbar-form navbar-left" role="search" action="SearchProductServlet" method="GET">
              <div class="form-group">
                <input type="text" class="form-control" name="search" placeholder="Search">
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
              <div class="section" style="padding:3em">
                <div class="container">
                  <div class="row">
                    <div class="col-md-2">
                      <ul class="list-group" style="margin-top:3.5em">
                        <form action="FilterBootsServlet" method="GET"><button class="list-group-item filter_result" type="submit" style="width:100%">Boots</button></form>
                        <form action="FilterShoesServlet" method="GET"><button class="list-group-item filter_result" type="submit" style="width:100%">Shoes</button></form>
                        <form action="FilterSandalsServlet" method="GET"><button class="list-group-item filter_result" type="submit" style="width:100%">Sandals</button></form>
                        <form action="FilterSlippersServlet" method="GET"><button class="list-group-item filter_result" type="submit" style="width:100%">Slippers</button></form>
                      </ul>
                    </div>
                    <div class="col-md-10">
                      <div class="section">
                        <div class="row">
                            <%

                                ArrayList<Product> products = (ArrayList)session.getAttribute("Products");
                                if(products.size() > 0){
                                    for(int i = 0; i < products.size(); i++){
                                        String image = "images\\" + products.get(i).getImage();

                                        String productName = products.get(i).getName();

                                        String description = products.get(i).getDescription();
                                        String price = Double.toString(products.get(i).getPrice());

                            %>
                          <div class="col-md-3" style="height:355px; width:250px;background-color:white; opacity:0.9; padding:2em;margin:1em; border-radius:5px;">

                          
                              <form>
                            <div id="card" style="height:145px; width:195px;">
                              <img src="<%=image%>" class="img-responsive img-rounded" style="width:inherit; height:inherit">
                            </div>
                            <h2><%=productName%></h2>
                            <p><%=description%></p>
                            <p><%=price%></p>
                            <a href="<%=request.getContextPath()%>/QuerySpecificProductServlet?productName=<%=productName%>" class="btn btn-success" style="background-color:317373;  color:white;  border-color:transparent;">View</a>    
                            </form>     

                          </div>
                            <% }
                            }%>
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
    </div>
    <script type="text/javascript">
      (function() {
      
      var img = document.getElementById('card').firstChild;
      img.onload = function() {
          if(img.height > img.width) {
              img.height = '100%';
              img.width = 'auto';
          }
      };
      
      }());
        
        $("#results").on("click", ".filter_result", function(event){
    console.log('clicked');
});
    </script>
  

</body></html>