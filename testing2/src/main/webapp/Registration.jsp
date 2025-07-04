<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Register</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

  <style>
    body {
      margin: 0;
      padding: 0;
      font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    }

    .hero-section {
      background-image: url('RoomDB1.jpg');
      background-size: cover;
      background-position: center;
      background-repeat: no-repeat;
      background-attachment: fixed;
      height: 100vh;
      display: flex;
      justify-content: center;
      align-items: center;
    }

    .abc {
      background-color: rgba(44, 47, 51, 0.95);
      padding: 30px;
      border-radius: 15px;
      box-shadow: 0 10px 30px rgba(0, 0, 0, 0.8);
      width: 100%;
      max-width: 400px;
    }

    .form-control {
      background-color: #1f1f1f;
      color: #fff;
      border: 1px solid #444;
    }

    .form-control:focus {
      border-color: #00d1ff;
      box-shadow: 0 0 0 0.2rem rgba(0, 209, 255, 0.25);
    }

    .btn-success {
      background-color: #00d1ff;
      border: none;
      font-weight: bold;
    }

    .btn-success:hover {
      background-color: #00b8e6;
    }

    .form-text, label, a {
      color: #bbb;
    }

    a:hover {
      text-decoration: underline;
      color: #00d1ff;
    }
  </style>
</head>
<body>

<div class="hero-section">
  <form action="Registration" method="post" class="abc">
    <h2 class="text-center text-light mb-4">Registration Here</h2>

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

    <button type="submit" class="btn btn-danger w-100">Register</button>

    <p class="text-center mt-3" style="color:white;">
      Already have an account? <a href="index.jsp">Login</a>
    </p>
  </form>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
