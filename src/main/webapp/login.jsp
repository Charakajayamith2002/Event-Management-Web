<!DOCTYPE html>
<html>

<head>
    <title>DreamMakers Event Planning</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">


<style>
    .container {
  display: flex;
  justify-content: center;
  align-items: center;
  height: 100vh;
}

.card-body {
  background-color: #fff;
  border-radius: 10px;
  box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
  width: 400px;
}

.text-center {
  margin-bottom: 30px;
}

.form-outline {
  position: relative;
}

.form-outline input {
  width: 100%;
  padding: 10px;
  border: none;
  border-bottom: 1px solid #ccc;
  outline: none;
}

.form-outline label {
  position: absolute;
  top: 0;
  left: 0;
  font-size: 14px;
  color: #999;
  transition: all 0.3s ease-out;
}

.form-outline input:focus + label,
.form-outline input:not(:placeholder-shown) + label {
  top: -20px;
  left: 0;
  font-size: 12px;
  color: #333;
}

.btn-primary {
  background-color: #007bff;
  border: none;
  outline: none;
  padding: 10px 20px;
  border-radius: 5px;
  color: #fff;
  cursor: pointer;
  transition: all 0.3s ease-out;
}

.btn-primary:hover {
  background-color: #0069d9;
}
body {
  background-image: url("https://images.squarespace-cdn.com/content/v1/57cf5e97414fb5a80f7a837b/1519410893820-Z6QV8X1Q4NFKBP6E9176/shutterstock_512157103.jpg?format=2500w");
}
</style>

</head>

<body>
    <!-- Header -->
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <a class="navbar-brand" href="#">DreamMakers Event Planning</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav"
            aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav">
                <li class="nav-item active">
                    <a class="nav-link" href="Home.jsp">Home</a>
                </li>
               
            </ul>
        </div>
    </nav>

    <!-- Content -->
    <div class="container">
        

        <div class="col-lg-6">
            <div class="card-body p-md-5 mx-md-4">
                <div class="text-center">
                    <!-- <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-login-form/lotus.webp"
                        style="width: 185px;" alt="logo"> -->
                    <h4 class="mt-1 mb-5 pb-1">Staff Login Form</h4>
                </div>
                <form action="login" method="post">
                    <div class="form-outline mb-4">
                        <input type="text" id="form2Example11" class="form-control" name="username" placeholder="Username" />
                    </div>
                    <div class="form-outline mb-4">
                        <input type="password" id="form2Example22" class="form-control" name="password"
                            placeholder="Password" />
                    </div>
                    <div class="text-center pt-1 mb-5 pb-1">
                        <button class="btn btn-primary btn-block" type="submit">Login</button>
                    </div>
                </form>
            </div>
        </div>
       
    </div>

    <!-- Footer
    <footer class="bg-light text-center text-lg-start">
        <div class="container p-4">
            <div class="row">
                <div class="col-lg-6 col-md-12 mb-4 mb-md-0">
                    <h5 class="text-uppercase">Footer Content</h5>
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed euismod, sapien vel bibendum
                        bibendum, velit sapien luctus velit -->