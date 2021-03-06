<html><head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script type="text/javascript" src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>
    <script type="text/javascript" src="http://netdna.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
    <link href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="registrationstyles.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/jquery.bootstrapvalidator/0.5.0/css/bootstrapValidator.min.css"/>
    <script type="text/javascript" src="http://cdnjs.cloudflare.com/ajax/libs/jquery.bootstrapvalidator/0.5.0/js/bootstrapValidator.min.js"> </script>

  </head><body>
    <div class="section">
      <div class="background-image" style="background-image : url('https://unsplash.imgix.net/photo-1421986527537-888d998adb74?w=1024&amp;q=50&amp;fm=jpg&amp;s=e633562a1da53293c4dc391fd41ce41d')"></div>
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <div class="jumbotron" style="margin-left: 6em; margin-right: 6em; background-color: transparent !important;">
              <h1 style="color:83eec5">Sign Up</h1>
              <hr>
              <form id = "registrationform" class="form-horizontal" role="form" action="${pageContext.request.contextPath}/Register" method="POST">
                <div class="form-group">
                  <div class="col-sm-2">
                    <label for="inputEmail3" class="control-label" style="color:white">Username</label>
                  </div>
                  <div class="col-sm-10">
                    <input type="text" class="form-control" id="inputEmail3" name="username" placeholder="Username">
                  </div>
                </div>
                <div class="form-group">
                  <div class="col-sm-2">
                    <label for="inputEmail3" class="control-label" style="color:white">Email</label>
                  </div>
                  <div class="col-sm-10">
                    <input type="email" class="form-control" id="inputEmail3" name="email" placeholder="Email">
                  </div>
                </div>
                <div class="form-group">
                  <div class="col-sm-2">
                    <label for="inputPassword3" class="control-label" style="color:white">Password</label>
                  </div>
                  <div class="col-sm-10">
                    <input type="password" class="form-control" id="inputPassword3" name="password" placeholder="Password">
                  </div>
                </div>
                <div class="form-group">
                  <div class="col-sm-2">
                    <label for="inputPassword3" class="control-label" style="color:white">Confirm Password</label>
                  </div>
                  <div class="col-sm-10">
                    <input type="password" class="form-control" id="inputPassword3" name="confPass" placeholder="Confirm Password">
                  </div>
                </div>
                <div class="form-group">
                  <div class="col-sm-2">
                    <label for="inputEmail3" class="control-label" style="color:white">First Name</label>
                  </div>
                  <div class="col-sm-10">
                    <input type="text" class="form-control" id="inputEmail3" name="fName" placeholder="First Name">
                  </div>
                </div>
                <div class="form-group">
                  <div class="col-sm-2">
                    <label for="inputPassword3" class="control-label" style="color:white">Last Name</label>
                  </div>
                  <div class="col-sm-10">
                    <input type="text" class="form-control" id="inputPassword3" name="lName" placeholder="Last Name">
                  </div>
                </div>
                <div class="form-group">
                  <div class="col-sm-2">
                    <label for="inputEmail3" class="control-label" style="color:white">Middle Intial</label>
                  </div>
                  <div class="col-sm-10">
                    <input type="text" class="form-control" id="inputEmail3" name="mInitial" placeholder="Middle Initial">
                  </div>
                </div>
                <hr>
                <div class="section">
                  <div class="container">
                    <div class="row">
                      <div class="col-md-6">
                        <h3 style="color:83eec5">Billing Address</h3>
                        <div class="form-group">
                          <div class="col-sm-3">
                            <label for="inputEmail3" class="control-label" style="color:white">House No.</label>
                          </div>
                          <div class="col-sm-9">
                            <input type="text" class="form-control" id="inputEmail3" name="bHouse" placeholder="House No.">
                          </div>
                        </div>
                        <div class="form-group">
                          <div class="col-sm-3">
                            <label for="inputEmail3" class="control-label" style="color:white">Street</label>
                          </div>
                          <div class="col-sm-9">
                            <input type="text" class="form-control" id="inputEmail3" name="bStreet" placeholder="Street">
                          </div>
                        </div>
                        <div class="form-group">
                          <div class="col-sm-3">
                            <label for="inputEmail3" class="control-label" style="color:white">Subdivision</label>
                          </div>
                          <div class="col-sm-9">
                            <input type="text" class="form-control" id="inputEmail3" name="bSubdivision" placeholder="Subdivision">
                          </div>
                        </div>
                        <div class="form-group">
                          <div class="col-sm-3">
                            <label for="inputPassword3" class="control-label" style="color:white">City</label>
                          </div>
                          <div class="col-sm-9">
                            <input type="text" class="form-control" id="inputPassword3" name="bCity" placeholder="City">
                          </div>
                        </div>
                        <div class="form-group">
                          <div class="col-sm-3">
                            <label for="inputEmail3" class="control-label" style="color:white">Postal Code</label>
                          </div>
                          <div class="col-sm-9">
                            <input type="text" class="form-control" id="inputEmail3" name="bPostalCode" placeholder="Postal Code">
                          </div>
                        </div>
                        <div class="form-group">
                          <div class="col-sm-3">
                            <label for="inputPassword3" class="control-label" style="color:white">Country</label>
                          </div>
                          <div class="col-sm-9">
                            <input type="text" class="form-control" id="inputPassword3" name="bCountry" placeholder="Country">
                          </div>
                        </div>
                      </div>
                      <div class="col-md-6">
                        <div class="col-md-12">
                          <h3 style="color:83eec5">Shipping Address</h3>
                        </div>
                        <div class="form-group">
                          <div class="col-sm-3">
                            <label for="inputEmail3" class="control-label" style="color:white">House No.</label>
                          </div>
                          <div class="col-sm-9">
                            <input type="text" class="form-control" id="inputEmail3" name="sHouse" placeholder="House No.">
                          </div>
                        </div>
                        <div class="form-group">
                          <div class="col-sm-3">
                            <label for="inputEmail3" class="control-label" style="color:white">Street</label>
                          </div>
                          <div class="col-sm-9">
                            <input type="text" class="form-control" id="inputEmail3" name="sStreet" placeholder="Street">
                          </div>
                        </div>
                        <div class="form-group">
                          <div class="col-sm-3">
                            <label for="inputEmail3" class="control-label" style="color:white">Subdivision</label>
                          </div>
                          <div class="col-sm-9">
                            <input type="text" class="form-control" id="inputEmail3" name="sSubdivision" placeholder="Subdivision">
                          </div>
                        </div>
                        <div class="form-group">
                          <div class="col-sm-3">
                            <label for="inputPassword3" class="control-label" style="color:white">City</label>
                          </div>
                          <div class="col-sm-9">
                            <input type="text" class="form-control" id="inputPassword3" name="sCity" placeholder="City">
                          </div>
                        </div>
                        <div class="form-group">
                          <div class="col-sm-3">
                            <label for="inputEmail3" class="control-label" style="color:white">Postal Code</label>
                          </div>
                          <div class="col-sm-9">
                            <input type="text" class="form-control" id="inputEmail3" name="sPostalCode" placeholder="Postal Code">
                          </div>
                        </div>
                        <div class="form-group">
                          <div class="col-sm-3">
                            <label for="inputPassword3" class="control-label" style="color:white">Country</label>
                          </div>
                          <div class="col-sm-9">
                            <input type="text" class="form-control" id="inputPassword3" name="sCountry" placeholder="Country">
                          </div>
                        </div>
                      </div>
                    </div>
                      <div id="messages"></div>
                    <button class="btn btn-large btn-lg btn-success" type="submit" style="background-color:399494; color:white; border-color:transparent" >Submit<br></button>
                  </div>
                </div>
              </form>
            </div>
          </div>
        </div>
      </div>
    </div>
                
    <script type = "text/javascript">
        $(document).ready(function() {
    $('#registrationform').bootstrapValidator({
        container: '#messages',
        feedbackIcons: {
            valid: 'fa fa-2x fa-fw fa-check',
            invalid: 'fa fa-2x fa-fw fa-remove',
            validating: 'fa fa-2x fa-fw fa-refresh'
        },
        fields: {
            username: {
                validators: {
                    notEmpty: {
                        message: 'The username is required and cannot be empty'
                    },
//                    stringLength: {
//                            min: 8,
//                            max: 30,
//                            message: 'The username must be more than 6 and less than 30 characters long'
//                        },
                        /*remote: {
                            url: 'remote.php',
                            message: 'The username is not available'
                        },*/
                        regexp: {
                            regexp: /^[a-zA-Z0-9_\.]+$/,
                            message: 'The username can only consist of alphabetical, number, dot and underscore'
                        }
                },
                
            },
            email: {
                validators: {
                    notEmpty: {
                        message: 'The password is required and cannot be empty'
                    },
                    emailAddress: {
                            message: 'The input is not a valid email address'
                    }
                }
                
            },
            password: {
                validators: {
                    notEmpty: {
                        message: 'The password is required and cannot be empty'
                    },
                    stringLength: {
                            min: 8,
                            max: 255,
                            message: 'The password must be more than 8 characters long'
                    }
                }
                
            },
            confPass: {
                validators: {
                    notEmpty: {
                        message: 'The password is required and cannot be empty'
                    },
                    identical: {
                    field: 'password',
                    message: 'The password and its confirm are not the same'
                }
              }
                
            },
            fName: {
                validators: {
                    notEmpty: {
                        message: 'The First Name is required and cannot be empty'
                    }
                }
                
            },
            lName: {
                validators: {
                    notEmpty: {
                        message: 'The Last Name is required and cannot be empty'
                    }
                }
                
            },
            bHouse: {
                validators: {
                    notEmpty: {
                        message: 'The House No is required and cannot be empty'
                    }
                }
                
            },
            sHouse: {
                validators: {
                    notEmpty: {
                        message: 'The House No is required and cannot be empty'
                    }
                }
                
            },
            bStreet: {
                validators: {
                    notEmpty: {
                        message: 'The Street is required and cannot be empty'
                    }
                    
                }
                
            },
            bSubdivision: {
                validators: {
                    notEmpty: {
                        message: 'The Subdivision is required and cannot be empty'
                    }
                }  
            },
            sSubdivision: {
                validators: {
                    notEmpty: {
                        message: 'The Subdivision is required and cannot be empty'
                    }
                }  
            },
            bCity: {
                validators: {
                    notEmpty: {
                        message: 'The City is required and cannot be empty'
                    }
                }
                
            },
            sCity: {
                validators: {
                    notEmpty: {
                        message: 'The City is required and cannot be empty'
                    }
                }
                
            },
            bPostalCode: {
                validators: {
                    notEmpty: {
                        message: 'The Postal Code is required and cannot be empty'
                    }
                }
                
            },
            sPostalCode: {
                validators: {
                    notEmpty: {
                        message: 'The Postal Code is required and cannot be empty'
                    }
                }
                
            },
            bCountry: {
                validators: {
                    notEmpty: {
                        message: 'The Country is required and cannot be empty'
                    }
                }
            },
            sCountry: {
                validators: {
                    notEmpty: {
                        message: 'The Country is required and cannot be empty'
                    }
                }
                
            }
        }
    });
});
    </script>
  

</body></html>