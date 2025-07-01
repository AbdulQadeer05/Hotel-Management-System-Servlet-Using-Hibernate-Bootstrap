<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Registration Page</title>
  <!-- Bootstrap CSS -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
  <style>
    body {
      background-color: #e9ecef;
    }
    .register-container {
      margin-top: 80px;
    }
    .card {
      padding: 30px;
      border-radius: 10px;
      box-shadow: 0 0 10px rgba(0,0,0,0.1);
    }
  </style>
</head>
<body>

<div class="container register-container">
  <div class="row justify-content-center">
    <div class="col-md-6 col-lg-5">
      <div class="card">
        <h2 class="text-center mb-4">Registration Here</h2>
        
        <form action="Registration" method="post">
          <div class="mb-3">
            <label for="name" class="form-label">Full Name</label>
            <input type="text" class="form-control" name="name" placeholder="Enter your full name" required>
          </div>
          
          <div class="mb-3">
            <label for="email" class="form-label">Email address</label>
            <input type="email" name="email" class="form-control" placeholder="Enter your email" required>
          </div>
          
          <div class="mb-3">
            <label for="password" class="form-label">Password</label>
            <input type="password" class="form-control" name="password" placeholder="Create a password" required>
          </div>
          
          <div class="d-grid">
            <button type="submit" class="btn btn-success">Register</button>
          </div>
        </form>
        <p class="text-center mt-3">
          Already have an account? <a href="index.jsp">Login</a>
        </p>
      </div>
    </div>
  </div>
</div>


</body>
</html>
