<%@page import="java.text.DecimalFormat"%>
<%@page import="modelz.Product"%>
<%@page import="java.util.ArrayList"%>
<%@page import="modelz.CustomerAccount"%>
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
              <li class="active">
                <a href="#">Home</a>
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
    </div>
    <div class="section" style="margin-top: 7em;">
      <div class="container">
        <form action="${pageContext.request.contextPath}/PreCheckout" method="POST">
          <div class="jumbotron">
            <h1 class="text-success">Shopping Cart</h1>
            <a href="#"></a>
            <table class="table">
              <thead>
                <tr>
                  <th>#</th>
                  <th>Product Name</th>
                  <th>Qty</th>
                  <th>Price</th>
                  <th></th>
                </tr>
              </thead>
              <tbody>
                   <%
                      CustomerAccount account = (CustomerAccount) session.getAttribute("Account");
                      ArrayList<Product> cart = account.getShoppingCart().getProdList();
                      DecimalFormat df = new DecimalFormat();
                      df.setMaximumFractionDigits(2);
                      double total = 0;
                      if(cart.size() > 0){
                      for(int i = 0; i < cart.size();i++){
                          Product product = cart.get(i);
                          int quantity = cart.get(i).getQuantity(); 
                          double price = product.getPrice();
                          total+=(price * quantity);
                          
                      
                  
                  %>
                <tr>
                 
                  <td><%=i+1%></td>
                  <td><%=product.getName()%></td>
                  <td>
                    <input type="text" class="form-control" value="<%=quantity%>" style="width:50px" readonly>
                  </td>
                  <td><%=price%></td>
                  <td>
                    <i class="fa fa-2x fa-fw fa-trash"></i>
                  </td>        
                </tr>
                <%    }
                        df.format(total);
                    } %>            
                </tbody>
              </table>
              <hr>
              <div class="section">
                <div class="container">
                  <div class="row">
                    <div class="col-md-6" style="color: rgb(24, 74, 74);">
                      <h3>Total</h3>
                    </div>
                    <div class="col-md-6">
                      <h3></h3>
                      <h3 class="text-right" style="color:184a4a"><input type="text" name="total" value="$<%=total%>" readonly></h3>
                    </div>
                  </div>
                </div>
              </div>
              <button class="btn btn-large btn-lg btn-success" style="background-color:399494; border-color:transparent" type="submit">Checkout</button>
            </div>
          </div>
        </div>
      </div>
    </div>
  

</body></html>