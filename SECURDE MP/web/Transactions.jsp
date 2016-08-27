<%@page import="modelz.ProductSales"%>
<%@page import="java.util.ArrayList"%>
<html><head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script type="text/javascript" src="js/jquery.min.js"></script>
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
    <link href="css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="css/bootstrap.css" rel="stylesheet" type="text/css">
    <script type="text/javascript" src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>
    <script type="text/javascript" src="http://netdna.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
    <link href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="http://pingendo.github.io/pingendo-bootstrap/themes/default/bootstrap.css" rel="stylesheet" type="text/css">
  </head><body style="background: #399494; /* fallback for old browsers */

background: -webkit-linear-gradient(to left, #83eec5 , #399494); /* Chrome 10-25, Safari 5.1-6 */

background: linear-gradient(to left, #83eec5 , #399494); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */">
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
      <div>
        <div class="section">
          <div class="container">
            <div class="row">
              <div class="col-md-12">
                <div class="section">
                  <div class="container">
                    <div class="row">
                      <div class="col-md-4">
                        <div class="jumbotron">
                          <form class="form-horizontal" role="form" action="${pageContext.request.contextPath}/FilterSales" method="POST">
                            <div class="form-group">
                              <div class="col-sm-12 text-left">
                                <div class="btn-group btn-group-lg">
                                  <select class="btn btn-primary dropdown-toggle" data-toggle="dropdown" name="salesFilter" style=" background-color:399494 !important;" width="100%">Dropdown
                                    <option value="filterTotal">Total Sales</option>
                                    <option value="filterBoots">Sales : Boots</option>
                                    <option value="filterSandals">Sales : Sandals</option>
                                    <option value="filterShoes">Sales : Shoes</option>
                                    <option value="filterSlippers">Sales : Slippers</option>
                                    <option value="filterProduct">Sales Per Product</option>
                                  </select>
                                </div>
                              </div>
                            </div>
                            <hr style="display: block;

                height: 1px;

                border: 0;

                border-top: 1px solid #ccc;

                margin: 1em 0;

                padding: 0; 

                color:#5acba5">
                            <div class="form-group"></div>
                            <button style="background-color:399494; border-color:transparent; width:100%" type="submit" class="btn btn-large btn-lg btn-success">Filter Transactions</button>
                          </form>
                        </div>
                      </div>
                      <div class="col-md-8">
                        <div class="jumbotron">
                          <table class="table">
                            <thead>
                              <tr>
                                <th>#</th>
                                <th>Products</th>
                                <th>Total Amount</th>
                              </tr>
                            </thead>
                            <tbody>
                                <%
                                    String filter = (String)request.getAttribute("filter action");
                                    String type = "";
                                    double total;
                                    
                                    if("filterTotal".equals(filter)){
                                        total = (double)request.getAttribute("Total Sales");
                                        
                                %>
                              <tr>
                                <td>1</td>
                                <td>All</td>
                                <td class=""><%=total%></td>
                                <td>
                                  <a href="ViewTransaction.jpg"><i class="fa fa-2x fa-fw text-muted fa-search-plus"></i></a>
                                </td>
                              </tr>
                              <%
                                        
                                    }else{
                                        
                                        
                                        ArrayList<ProductSales> salesProduct = (ArrayList)request.getAttribute("Total Sales Products");
                                        for(int i = 0; i < salesProduct.size(); i++){
                                            ProductSales prod = salesProduct.get(i);
                                            total = prod.getTotal();
                                     
                                  
                              %>
                              <tr>
                                <td><%=i+1%></td>
                                <td><%=prod.getName()%></td>
                                <td class=""><%=total%></td>
                                <td>
                                  <a href="ViewTransaction.jpg"><i class="fa fa-2x fa-fw text-muted fa-search-plus"></i></a>
                                </td>
                              </tr>
                              <%
                                }
                                }
                              %>
                            </tbody>
                          </table>
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