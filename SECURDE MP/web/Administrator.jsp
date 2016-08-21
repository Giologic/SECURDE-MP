<%@page import="modelz.AccountingManagerAccount"%>
<%@page import="modelz.ProductManagerAccount"%>
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
                <a href="<%=request.getContextPath()%>/LogoutServlet">Logout</a>
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
                      <div class="col-md-12">
                        <div class="jumbotron">
                          <div class="row">
                            <div class="col-md-3">
                              <h1>Accounts</h1>
                            </div>
                            <div class="col-md-offset-9 text-center vertical-center">
                              <a style="background-color:399494; border-color:transparent; margin-left:35%; margin-top: 13%; font-size:20px" type="submit" class="btn btn-large btn-lg btn-success" href="AdministratorAddAccount.jsp">Add Account</a>
                            </div>
                          </div>
                          <table class="table">
                            <thead>
                                
                              <tr>
                                <th>#</th>
                                <th>Username</th>
                                <th>Role</th>
                                <th>Expiry Date</th>
                              </tr>
                            </thead>
                            <tbody>
                                <%
                                    int count = 0;
                                    ArrayList<ProductManagerAccount> productManagers = (ArrayList) session.getAttribute("productManagers");
                                    ArrayList<AccountingManagerAccount> accountingManagers = (ArrayList) session.getAttribute("accountingManagers");
                                     
                                    if(productManagers.size() > 0){
                                        for(int i = 0; i < productManagers.size();i++){
                                            ProductManagerAccount pManager = productManagers.get(i);
                                            count++;
                                %>
                              <tr>
                                <td><%=count%></td>
                                <td><%=pManager.getUsername()%></td>
                                <td><%=pManager.getPrivilege()%></td>
                                <td><%=pManager.getTimestamp()%></td>
                                <td>
                                  <a href="<%=request.getContextPath()%>/PreEditAccountServlet?editUsername=<%=pManager.getUsername()%>&editPrivilege=<%=pManager.getPrivilege()%>"><i class="fa fa-2x fa-edit fa-fw text-muted"></i></a>
                                </td>
                                <td>
                                  <a href="#"><i class="fa fa-2x fa-fw text-muted fa-trash"></i></a>
                                </td>
                              </tr>
                              <%
                                  }
                                    }
                                    if(accountingManagers.size() > 0){
                                        for(int i = 0; i < accountingManagers.size();i++){
                                            AccountingManagerAccount aManager = accountingManagers.get(i);
                                            count++;
                              %>
                              <tr>
                                <td><%=count%></td>
                                <td><%=aManager.getUsername()%></td>
                                <td><%=aManager.getPrivilege()%></td>
                                <td><%=aManager.getTimestamp()%></td>
                                <td>
                                  <a href="<%=request.getContextPath()%>/PreEditAccountServlet?editUsername=<%=aManager.getUsername()%>&editPrivilege=<%=aManager.getPrivilege()%>"><i class="fa fa-2x fa-edit fa-fw text-muted"></i></a>
                                </td>
                                <td>
                                  <a href="#"><i class="fa fa-2x fa-fw text-muted fa-trash"></i></a>
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