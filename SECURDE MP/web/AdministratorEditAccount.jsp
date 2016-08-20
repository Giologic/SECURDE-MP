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
  </head><body>
    <script type="text/javascript">
      $(document).ready(function() {
                                  $('.datetimepicker1').datetimepicker();
                              })
                              $(function () {
                                  $('#datetimepicker1').datetimepicker();
                              });
    </script>
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
              <li>
                <a href="ProductManager.jsp">View Products</a>
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
          <div class="container" style="margin-top:3em">
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
                    <input type="email" class="form-control" id="inputEmail3" name="username" placeholder="Email">
                  </div>
                </div>
                <div class="form-group">
                  <div class="col-sm-2">
                    <label for="inputEmail3" class="control-label">First Name</label>
                  </div>
                  <div class="col-sm-10">
                    <textarea type="text" class="form-control" id="inputEmail3" name="first_name" placeholder="First Name"></textarea>
                  </div>
                </div>
                <div class="form-group">
                  <div class="col-sm-2">
                    <label for="inputEmail3" class="control-label">Last Name</label>
                  </div>
                  <div class="col-sm-10">
                    <textarea type="text" class="form-control" id="inputEmail3" name="last_name" placeholder="Last Name"></textarea>
                  </div>
                </div>
                <div class="form-group">
                  <div class="col-sm-2">
                    <label for="inputEmail3" class="control-label">Middle Initial</label>
                  </div>
                  <div class="col-sm-10">
                    <textarea type="text" class="form-control" id="inputEmail3" name="middle_initial" placeholder="Middle Initial"></textarea>
                  </div>
                </div>
                <div class="form-group">
                  <div class="col-sm-2">
                    <label for="inputEmail3" class="control-label">Role</label>
                  </div>
                  <div class="btn-group btn-group-lg" style="margin-left:1em;">
                    <a class="btn btn-primary dropdown-toggle" data-toggle="dropdown" style=" background-color:399494 !important"> Dropdown <span class="fa fa-caret-down"></span></a>
                    <ul class="dropdown-menu" role="menu">
                      <li>
                        <a href="#">Accounting Manager</a>
                      </li>
                      <li>
                        <a href="#">Product Manager</a>
                      </li>
                    </ul>
                  </div>
                </div>
                <div class="form-group">
                  <div class="col-sm-2">
                    <label for="inputEmail3" class="control-label">Expiry Date</label>
                  </div>
                  <div class="container">
                    <div class="col-sm-10">
                      <div class="form-group" style="margin-left:0.1em">
                        <div class="input-group date" id="datetimepicker1">
                          <input type="text" class="form-control">
                          <span class="input-group-addon">
                            <span class="fa fa-fw fa-lg fa-mobile"></span>
                          </span>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                <hr>
                <a style="background-color:399494; border-color:transparent" type="submit" class="btn btn-large btn-lg btn-success" href="ProductManager.jsp">Save</a>
              </form>
            </div>
          </div>
        </div>
      </div>
    </div>
  

</body></html>