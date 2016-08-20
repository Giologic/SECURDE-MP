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
          <div class="container">
            <div class="row">
              <div class="col-md-12">
                <div class="section">
                  <div class="container">
                    <div class="row">
                      <div class="col-md-4">
                        <div class="jumbotron">
                          <form class="form-horizontal" role="form">
                            <div class="form-group">
                              <div class="col-sm-4">
                                <label for="inputEmail3" class="control-label">Keyword
                                  <br>
                                  <br>
                                </label>
                              </div>
                              <div class="col-sm-8">
                                <input type="email" class="form-control" id="inputEmail3" placeholder="Keyword">
                              </div>
                            </div>
                            <div class="form-group">
                              <div class="col-sm-4">
                                <label for="inputPassword3" class="control-label">Month</label>
                              </div>
                              <div class="col-sm-8 text-left">
                                <div class="btn-group btn-group-lg" style="margin-left:1em;">
                                  <a class="btn btn-primary dropdown-toggle" data-toggle="dropdown" style=" background-color:399494 !important"> Dropdown <span class="fa fa-caret-down"></span></a>
                                  <ul class="dropdown-menu" role="menu">
                                    <li>
                                      <a href="#">Action</a>
                                    </li>
                                  </ul>
                                </div>
                              </div>
                            </div>
                            <div class="form-group">
                              <div class="col-sm-4">
                                <label for="inputPassword3" class="control-label">Day</label>
                              </div>
                              <div class="col-sm-8 text-left">
                                <div class="btn-group btn-group-lg" style="margin-left:1em;">
                                  <a class="btn btn-primary dropdown-toggle" data-toggle="dropdown" style=" background-color:399494 !important"> Dropdown <span class="fa fa-caret-down"></span></a>
                                  <ul class="dropdown-menu" role="menu">
                                    <li>
                                      <a href="#">Action</a>
                                    </li>
                                  </ul>
                                </div>
                              </div>
                            </div>
                            <div class="form-group">
                              <div class="col-sm-4">
                                <label for="inputEmail3" class="control-label">Year</label>
                              </div>
                              <div class="col-sm-8">
                                <div class="btn-group btn-group-lg" style="margin-left:1em;">
                                  <a class="btn btn-primary dropdown-toggle" data-toggle="dropdown" style=" background-color:399494 !important"> Dropdown <span class="fa fa-caret-down"></span></a>
                                  <ul class="dropdown-menu" role="menu">
                                    <li>
                                      <a href="#">Action</a>
                                    </li>
                                  </ul>
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
                            <a style="background-color:399494; border-color:transparent; width:100%" type="submit" class="btn btn-large btn-lg btn-success">Filter Transactions</a>
                          </form>
                        </div>
                      </div>
                      <div class="col-md-8">
                        <div class="jumbotron">
                          <table class="table">
                            <thead>
                              <tr>
                                <th>#</th>
                                <th>Date of Transaction</th>
                                <th>Total Amount</th>
                              </tr>
                            </thead>
                            <tbody>
                              <tr>
                                <td>1</td>
                                <td>June 24, 1996</td>
                                <td class="">$1900</td>
                                <td>
                                  <a href="ViewTransaction.jpg"><i class="fa fa-2x fa-fw text-muted fa-search-plus"></i></a>
                                </td>
                              </tr>
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