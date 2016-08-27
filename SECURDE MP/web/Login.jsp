<html><head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script type="text/javascript" src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>
    <script type="text/javascript" src="http://netdna.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
    <link href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="styles.css" rel="stylesheet" type="text/css">
  </head><body>
    <div class="cover">
      <div class="cover-image" style="background-image : url('https://unsplash.imgix.net/photo-1421986527537-888d998adb74?w=1024&amp;q=50&amp;fm=jpg&amp;s=e633562a1da53293c4dc391fd41ce41d')"></div>
      <div class="container">
        <div class="section">
          <div class="container">
            <div class="row">
              <div class="col-md-12">
                <h1 class="text-center" style="color:white">Talaria</h1>
              </div>
            </div>
            <div class="row">
              <div class="col-md-6">
                <form role="form" action="${pageContext.request.contextPath}/anona" method="POST">
                  <div class="form-group">
                    <label class="control-label" for="exampleInputEmail1" style="color:white">Username</label>
                    <input class="form-control" id="exampleInputEmail1" placeholder="Username" type="text" name="username">
                  </div>
                  <div class="form-group">
                    <label class="control-label" for="exampleInputPassword1" style="color:white">Password</label>
                    <input class="form-control" id="exampleInputPassword1" placeholder="Password" type="password" name="password">
                  </div>
                  <div class="row">
                    <div class="col-md-2">
                      <button type="submit" class="btn btn-link" href="Main.jsp" style="background-color:317373;color:white; border-radius:5px !important">Log In</button>
                    </div>
                    <div class="col-md-10">
                      <a class="form-control btn-link" type="submit" style="color:#83eec5; font-size:18px" href="Registration.jsp">
                        Create an account
                      </a>
                    </div>
                  </div>
                </form>
              </div>
              <div class="col-md-6">
                <h2 style="color:83eec5">Find your solemate</h2>
                <blockquote style="color:white">
                  <p>I found mine here</p>
                  <footer style="color: 83eec5">Kaye Solemon</footer>
                </blockquote>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  

</body></html>