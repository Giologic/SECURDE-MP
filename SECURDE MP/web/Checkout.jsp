<%@page import="modelz.Address"%>
<%@page import="modelz.CustomerAccount"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.text.DecimalFormat"%>
<%@page import="modelz.Product"%>
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
                <a href="Main.jsp">Home</a>
              </li>
              <li>
                  <form action="LogoutServlet" method="POST" >
                <button href="Login.jsp">Logout</button>
                  </form>
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
          <div class="container" style="margin-top:7em">
            <div class="row">
              <div class="col-md-12">
                <div class="section">
                  <div class="container">
                    <div class="row">
                      <div class="col-md-8">
                        <div class="jumbotron">
                          <h1 style="color:184a4a">Checkout</h1>
                          <hr>
                          <form class="form-horizontal" role="form" action="CheckoutCartServlet" method="POST">
                            <hr>
                            <div class="section">
                              <div class="container">
                                <div class="row">
                                  <div class="col-md-12">
                                    <h3 style="color:184a4a">Credit Card Information</h3>
                                    <div class="form-group">
                                      <div class="col-sm-3">
                                        <label for="inputEmail3" class="control-label">Name on Card
                                          <br>
                                        </label>
                                      </div>
                                      <div class="col-sm-9">
                                        <input type="text" class="form-control" id="inputEmail3" name="ownerName" placeholder="Name on Card">
                                      </div>
                                    </div>
                                    <div class="form-group">
                                      <div class="col-sm-3">
                                        <label for="inputEmail3" class="control-label">Credit Card Number
                                          <br>
                                        </label>
                                      </div>
                                      <div class="col-sm-9">
                                        <input type="text" class="form-control" id="inputEmail3" name="cardNum" placeholder="Credit Card Number">
                                      </div>
                                    </div>
                                 <!--   <div class="form-group">
                                      <div class="col-sm-3">
                                        <label for="inputEmail3" class="control-label">Expiry Date</label>
                                      </div>
                                      <div class="col-sm-9">
                                        <input type="text" class="form-control" id="inputEmail3" name="bStreet" placeholder="MM/YY">
                                      </div>
                                    </div> -->
                                    <div class="form-group">
                                      <div class="col-sm-3">
                                        <label for="inputPassword3" class="control-label">Security Code</label>
                                      </div>
                                      <div class="col-sm-9">
                                        <input type="text" class="form-control" id="inputPassword3" name="securityCode" placeholder="Security Code">
                                      </div>
                                    </div>
                                  </div>
                                </div>
                              </div>
                            </div>
                      <!--    </form> 
                          <form class="form-horizontal" role="form"> -->
                            <hr>
                            <%
                            
                                CustomerAccount account = (CustomerAccount) session.getAttribute("Account");
                                Address billing = account.getBillingAddress();
                                Address shipping = account.getShippingAddress();
                            
                            %>
                            <div class="section">
                              <div class="container">
                                <div class="row">
                                  <div class="col-md-6">
                                    <h3 style="color:184a4a">Billing Address</h3>
                                    <div class="form-group">
                                      <div class="col-sm-3">
                                        <label for="inputEmail3" class="control-label">House No.</label>
                                      </div>
                                      <div class="col-sm-9">
                                        <input type="text" class="form-control" id="inputEmail3" name="bHouse" value="<%=billing.getHouse_no()%>" placeholder="House No." readonly>
                                      </div>
                                    </div>
                                    <div class="form-group">
                                      <div class="col-sm-3">
                                        <label for="inputEmail3" class="control-label">Street</label>
                                      </div>
                                      <div class="col-sm-9">
                                        <input type="text" class="form-control" id="inputEmail3" name="bStreet" placeholder="Street" value="<%=billing.getStreet()%>" readonly>
                                      </div>
                                    </div>
                                    <div class="form-group">
                                      <div class="col-sm-3">
                                        <label for="inputEmail3" class="control-label">Subdivision</label>
                                      </div>
                                      <div class="col-sm-9">
                                        <input type="text" class="form-control" id="inputEmail3" name="bSubdivision" placeholder="Subdivision" value="<%=billing.getSubdivision()%>" readonly>
                                      </div>
                                    </div>
                                    <div class="form-group">
                                      <div class="col-sm-3">
                                        <label for="inputPassword3" class="control-label">City</label>
                                      </div>
                                      <div class="col-sm-9">
                                        <input type="text" class="form-control" id="inputPassword3" name="bCity" placeholder="City" value="<%=billing.getCity()%>" readonly>
                                      </div>
                                    </div>
                                    <div class="form-group">
                                      <div class="col-sm-3">
                                        <label for="inputEmail3" class="control-label">Postal Code</label>
                                      </div>
                                      <div class="col-sm-9">
                                        <input type="text" class="form-control" id="inputEmail3" name="bPostalCode" placeholder="Postal Code" value="<%=billing.getPostal_code()%>" readonly>
                                      </div>
                                    </div>
                                    <div class="form-group">
                                      <div class="col-sm-3">
                                        <label for="inputPassword3" class="control-label">Country</label>
                                      </div>
                                      <div class="col-sm-9">
                                        <input type="text" class="form-control" id="inputPassword3" name="Country" placeholder="Country" value="<%=billing.getCountry()%>" readonly>
                                      </div>
                                    </div>
                                  </div>
                                  <div class="col-md-6">
                                    <div class="col-md-12">
                                      <h3 style="color:184a4a">Shipping Address</h3>
                                    </div>
                                    <div class="form-group">
                                      <div class="col-sm-3">
                                        <label for="inputEmail3" class="control-label">House No.</label>
                                      </div>
                                      <div class="col-sm-9">
                                        <input type="text" class="form-control" id="inputEmail3" name="bHouse" placeholder="House No." value="<%=shipping.getHouse_no()%>" readonly>
                                      </div>
                                    </div>
                                    <div class="form-group">
                                      <div class="col-sm-3">
                                        <label for="inputEmail3" class="control-label">Street</label>
                                      </div>
                                      <div class="col-sm-9">
                                        <input type="text" class="form-control" id="inputEmail3" name="bStreet" placeholder="Street" value="<%=shipping.getStreet()%>" readonly>
                                      </div>
                                    </div>
                                    <div class="form-group">
                                      <div class="col-sm-3">
                                        <label for="inputEmail3" class="control-label">Subdivision</label>
                                      </div>
                                      <div class="col-sm-9">
                                        <input type="text" class="form-control" id="inputEmail3" name="bSubdivision" placeholder="Subdivision" value="<%=shipping.getSubdivision()%>" readonly>
                                      </div>
                                    </div>
                                    <div class="form-group">
                                      <div class="col-sm-3">
                                        <label for="inputPassword3" class="control-label">City</label>
                                      </div>
                                      <div class="col-sm-9">
                                        <input type="text" class="form-control" id="inputPassword3" name="bCity" placeholder="City" value="<%=shipping.getCity()%>" readonly>
                                      </div>
                                    </div>
                                    <div class="form-group">
                                      <div class="col-sm-3">
                                        <label for="inputEmail3" class="control-label">Postal Code</label>
                                      </div>
                                      <div class="col-sm-9">
                                        <input type="text" class="form-control" id="inputEmail3" name="bPostalCode" placeholder="Postal Code" value="<%=shipping.getPostal_code()%>" readonly>
                                      </div>
                                    </div>
                                    <div class="form-group">
                                      <div class="col-sm-3">
                                        <label for="inputPassword3" class="control-label">Country</label>
                                      </div>
                                      <div class="col-sm-9">
                                        <input type="text" class="form-control" id="inputPassword3" name="Country" placeholder="Country" value="<%=shipping.getCountry()%>" readonly>
                                      </div>
                                    </div>
                                  </div>
                                </div>
                                <hr>
                                <button style="background-color:399494; border-color:transparent" type="submit" class="btn btn-large btn-lg btn-success">Purchase</button>
                              </div>
                            </div>
                          </form>
                        </div>
                      </div>
                      <div class="col-md-4">
                        <div class="jumbotron" style="opacity:0.9; border-radius:0.8">
                          <table class="table">
                            <thead>
                              <tr>
                                <th>#</th>
                                <th>Product Name</th>
                                <th>Qty</th>
                                <th>Price</th>
                              </tr>
                            </thead>
                            <tbody>
                              <%
                     
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
                                  <h3 class="text-right" style="color:184a4a">$<%=session.getAttribute("total")%></h3>
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
          </div>
        </div>
      </div>
    </div>
  

</body></html>