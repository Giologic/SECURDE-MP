<html><head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script type="text/javascript" src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>
    <script type="text/javascript" src="http://netdna.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
    <link href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="registrationstyles.css" rel="stylesheet" type="text/css">
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
              <a href="#">Home</a>
            </li>
            <li>
              <a href="#">Logout</a>
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
            <div class="jumbotron" style="margin-left: 6em; margin-right: 6em; margin-top: 6em;">
              <h1 class="text-success">Edit Account</h1>
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
                <h3>Edit Password</h3>
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
                        <h3>Billing Address</h3>
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
                          <h3>Shipping Address</h3>
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
                    <a class="btn btn-large btn-lg btn-success">Save<br></a>
                  </div>
                </div>
              </form>
            </div>
          </div>
        </div>
      </div>
    </div>
  

</body></html>