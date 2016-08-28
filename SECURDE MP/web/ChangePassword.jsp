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
              <h1 style="color:184a4a">Change Password</h1>
              <hr>
              <form class="form-horizontal" role="form">
                
                <h3 style="color:184a4a">Edit Password</h3>
                <div class="form-group">
                  <div class="col-sm-2">
                    <label for="inputPassword3" class="control-label">Old Password</label>
                  </div>
                  <div class="col-sm-10">
                    <input type="password" class="form-control" id="inputPassword3" name="newPassword" placeholder="Old Password">
                  </div>
                </div>
                <div class="form-group">
                  <div class="col-sm-2">
                    <label for="inputPassword3" class="control-label">New Password</label>
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
                
                
                    <a style="background-color:399494; border-color:transparent" type="submit" class="btn btn-large btn-lg btn-success" href="ViewAccount.jsp">Submit</a>
              </form>
            </div>
          </div>
        </div>
      </div>
    </div>
  

</body></html>