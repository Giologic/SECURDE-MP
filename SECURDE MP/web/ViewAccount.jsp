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
          <div class="container" style="margin-top:7em">
            <div class="jumbotron" style="opacity:0.9; border-radius:0.8">
              <h1 style="color:184a4a">View Account</h1>
              <hr>
              <form class="form-horizontal" role="form">
                <div class="form-group">
                  <div class="col-sm-2">
                    <label for="inputEmail3" class="control-label">Username</label>
                  </div>
                  <div class="col-sm-10">
                    <label class="control-label">gioanton96</label>
                  </div>
                </div>
                <div class="form-group">
                  <div class="col-sm-2">
                    <label for="inputEmail3" class="control-label">Email</label>
                  </div>
                  <div class="col-sm-10">
                    <label class="control-label">gioantonvelez@gmail.com</label>
                  </div>
                </div>
                <div class="form-group">
                  <div class="col-sm-2">
                    <label for="inputEmail3" class="control-label">First Name</label>
                  </div>
                  <div class="col-sm-10">
                    <label class="control-label">Gio Anton</label>
                  </div>
                </div>
                <div class="form-group">
                  <div class="col-sm-2">
                    <label for="inputPassword3" class="control-label">Last Name</label>
                  </div>
                  <div class="col-sm-10">
                    <label class="control-label">Velez</label>
                  </div>
                </div>
                <div class="form-group">
                  <div class="col-sm-2">
                    <label for="inputEmail3" class="control-label">Middle Intial</label>
                  </div>
                  <div class="col-sm-10">
                    <label class="control-label">T.</label>
                  </div>
                </div>
                <hr>
                <div class="section">
                  <div class="container">
                    <div class="row">
                      <div class="col-md-6">
                        <h3>Billing Address</h3>
                        <div class="form-group">
                          <div class="col-sm-3">
                            <label for="inputEmail3" class="control-label">House No.</label>
                          </div>
                          <div class="col-sm-9">
                            <label class="control-label">1</label>
                          </div>
                        </div>
                        <div class="form-group">
                          <div class="col-sm-3">
                            <label for="inputEmail3" class="control-label">Street</label>
                          </div>
                          <div class="col-sm-9">
                            <label for="inputEmail3" class="control-label">Aquarius St.</label>
                          </div>
                        </div>
                        <div class="form-group">
                          <div class="col-sm-3">
                            <label for="inputEmail3" class="control-label">Subdivision</label>
                          </div>
                          <div class="col-sm-9">
                            <label for="inputEmail3" class="control-label">Singcang</label>
                          </div>
                        </div>
                        <div class="form-group">
                          <div class="col-sm-3">
                            <label for="inputPassword3" class="control-label">City</label>
                          </div>
                          <div class="col-sm-9">
                            <label for="inputEmail3" class="control-label">Bacolod</label>
                          </div>
                        </div>
                        <div class="form-group">
                          <div class="col-sm-3">
                            <label for="inputEmail3" class="control-label">Postal Code</label>
                          </div>
                          <div class="col-sm-9">
                            <label for="inputEmail3" class="control-label">6100</label>
                          </div>
                        </div>
                        <div class="form-group">
                          <div class="col-sm-3">
                            <label for="inputPassword3" class="control-label">Country</label>
                          </div>
                          <div class="col-sm-9">
                            <label for="inputEmail3" class="control-label">Philippines</label>
                          </div>
                        </div>
                      </div>
                      <div class="col-md-6">
                        <div class="col-md-12">
                          <h3>Shipping Address</h3>
                        </div>
                        <div class="form-group">
                          <div class="col-sm-3">
                            <label for="inputEmail3" class="control-label">House No.</label>
                          </div>
                          <div class="col-sm-9">
                            <label for="inputEmail3" class="control-label">1</label>
                          </div>
                        </div>
                        <div class="form-group">
                          <div class="col-sm-3">
                            <label for="inputEmail3" class="control-label">Street</label>
                          </div>
                          <div class="col-sm-9">
                            <label for="inputEmail3" class="control-label">Aquarius St.</label>
                          </div>
                        </div>
                        <div class="form-group">
                          <div class="col-sm-3">
                            <label for="inputEmail3" class="control-label">Subdivision</label>
                          </div>
                          <div class="col-sm-9">
                            <label for="inputEmail3" class="control-label">Singcang</label>
                          </div>
                        </div>
                        <div class="form-group">
                          <div class="col-sm-3">
                            <label for="inputPassword3" class="control-label">City</label>
                          </div>
                          <div class="col-sm-9">
                            <label for="inputEmail3" class="control-label">Bacolod</label>
                          </div>
                        </div>
                        <div class="form-group">
                          <div class="col-sm-3">
                            <label for="inputEmail3" class="control-label">Postal Code</label>
                          </div>
                          <div class="col-sm-9">
                            <label for="inputEmail3" class="control-label">6100</label>
                          </div>
                        </div>
                        <div class="form-group">
                          <div class="col-sm-3">
                            <label for="inputPassword3" class="control-label">Country</label>
                          </div>
                          <div class="col-sm-9">
                            <label for="inputEmail3" class="control-label">Philippines</label>
                          </div>
                        </div>
                      </div>
                    </div>
                    <div class="row">
                       <a style="background-color:399494; border-color:transparent" type="submit" class="btn btn-large btn-lg btn-success" href="EditAccount.jsp">Edit Details</a>
                    
                    </div>
                   
                  </div>
                </div>
              </form>
            </div>
          </div>
        </div>
      </div>
    </div>
    
  

</body></html>