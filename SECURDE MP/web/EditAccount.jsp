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
                <a href="Login.jsp">Logout</a>
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
              <h1 style="color:184a4a">Edit Account</h1>
              <hr>
              <form class="form-horizontal" role="form">
                <div class="form-group">
                  <div class="col-sm-2">
                    <label for="inputEmail3" class="control-label">Username</label>
                  </div>
                  <div class="col-sm-10">
                    <input type="text" class="form-control" id="inputEmail3" name="username" placeholder="Username">
                  </div>
                </div>
                <div class="form-group">
                  <div class="col-sm-2">
                    <label for="inputEmail3" class="control-label">Email</label>
                  </div>
                  <div class="col-sm-10">
                    <input type="email" class="form-control" id="inputEmail3" name="email" placeholder="Email">
                  </div>
                </div>
                <div class="form-group">
                  <div class="col-sm-2">
                    <label for="inputEmail3" class="control-label">First Name</label>
                  </div>
                  <div class="col-sm-10">
                    <input type="text" class="form-control" id="inputEmail3" name="fName" placeholder="First Name">
                  </div>
                </div>
                <div class="form-group">
                  <div class="col-sm-2">
                    <label for="inputPassword3" class="control-label">Last Name</label>
                  </div>
                  <div class="col-sm-10">
                    <input type="text" class="form-control" id="inputPassword3" name="lName" placeholder="Last Name">
                  </div>
                </div>
                <div class="form-group">
                  <div class="col-sm-2">
                    <label for="inputEmail3" class="control-label">Middle Intial</label>
                  </div>
                  <div class="col-sm-10">
                    <input type="text" class="form-control" id="inputEmail3" name="mInitial" placeholder="Middle Initial">
                  </div>
                </div>
                <hr>
                <h3 style="color:184a4a">Edit Password</h3>
                <div class="form-group">
                  <div class="col-sm-2">
                    <label for="inputPassword3" class="control-label">Password</label>
                  </div>
                  <div class="col-sm-10">
                    <input type="password" class="form-control" id="inputPassword3" name="newPassword" placeholder="New Password">
                  </div>
                </div>
                <div class="form-group">
                  <div class="col-sm-2">
                    <label for="inputPassword3" class="control-label">Confirm Password</label>
                  </div>
                  <div class="col-sm-10">
                    <input type="password" class="form-control" id="inputPassword3" name="confPass" placeholder="Confirm New Password">
                  </div>
                </div>
                <hr>
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
                            <input type="text" class="form-control" id="inputEmail3" name="bHouse" placeholder="House No.">
                          </div>
                        </div>
                        <div class="form-group">
                          <div class="col-sm-3">
                            <label for="inputEmail3" class="control-label">Street</label>
                          </div>
                          <div class="col-sm-9">
                            <input type="text" class="form-control" id="inputEmail3" name="bStreet" placeholder="Street">
                          </div>
                        </div>
                        <div class="form-group">
                          <div class="col-sm-3">
                            <label for="inputEmail3" class="control-label">Subdivision</label>
                          </div>
                          <div class="col-sm-9">
                            <input type="text" class="form-control" id="inputEmail3" name="bSubdivision" placeholder="Subdivision">
                          </div>
                        </div>
                        <div class="form-group">
                          <div class="col-sm-3">
                            <label for="inputPassword3" class="control-label">City</label>
                          </div>
                          <div class="col-sm-9">
                            <input type="text" class="form-control" id="inputPassword3" name="bCity" placeholder="City">
                          </div>
                        </div>
                        <div class="form-group">
                          <div class="col-sm-3">
                            <label for="inputEmail3" class="control-label">Postal Code</label>
                          </div>
                          <div class="col-sm-9">
                            <input type="text" class="form-control" id="inputEmail3" name="bPostalCode" placeholder="Postal Code">
                          </div>
                        </div>
                        <div class="form-group">
                          <div class="col-sm-3">
                            <label for="inputPassword3" class="control-label">Country</label>
                          </div>
                          <div class="col-sm-9">
                            <input type="text" class="form-control" id="inputPassword3" name="Country" placeholder="Country">
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
                            <input type="text" class="form-control" id="inputEmail3" name="bHouse" placeholder="House No.">
                          </div>
                        </div>
                        <div class="form-group">
                          <div class="col-sm-3">
                            <label for="inputEmail3" class="control-label">Street</label>
                          </div>
                          <div class="col-sm-9">
                            <input type="text" class="form-control" id="inputEmail3" name="bStreet" placeholder="Street">
                          </div>
                        </div>
                        <div class="form-group">
                          <div class="col-sm-3">
                            <label for="inputEmail3" class="control-label">Subdivision</label>
                          </div>
                          <div class="col-sm-9">
                            <input type="text" class="form-control" id="inputEmail3" name="bSubdivision" placeholder="Subdivision">
                          </div>
                        </div>
                        <div class="form-group">
                          <div class="col-sm-3">
                            <label for="inputPassword3" class="control-label">City</label>
                          </div>
                          <div class="col-sm-9">
                            <input type="text" class="form-control" id="inputPassword3" name="bCity" placeholder="City">
                          </div>
                        </div>
                        <div class="form-group">
                          <div class="col-sm-3">
                            <label for="inputEmail3" class="control-label">Postal Code</label>
                          </div>
                          <div class="col-sm-9">
                            <input type="text" class="form-control" id="inputEmail3" name="bPostalCode" placeholder="Postal Code">
                          </div>
                        </div>
                        <div class="form-group">
                          <div class="col-sm-3">
                            <label for="inputPassword3" class="control-label">Country</label>
                          </div>
                          <div class="col-sm-9">
                            <input type="text" class="form-control" id="inputPassword3" name="Country" placeholder="Country">
                          </div>
                        </div>
                      </div>
                    </div>
                    <a style="background-color:399494; border-color:transparent" type="submit" class="btn btn-large btn-lg btn-success" href="ViewAccount.jsp">Save</a>
                  </div>
                </div>
              </form>
            </div>
          </div>
        </div>
      </div>
    </div>
  

</body></html>