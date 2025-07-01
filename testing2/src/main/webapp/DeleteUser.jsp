<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>User Delete </title>
  <meta name="viewport" content="width=device-width, initial-scale=1">

  
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

  <style>
    
    .navbar {
      box-shadow: 0 4px 10px rgba(0, 0, 0, 0.3);
    }
    .navbar-brand {
      font-size: 1.8rem;
      font-weight: bold;
      color: white;
    }
    .nav-link {
      font-weight: 600;
      font-size: 1.1rem;
      transition: all 0.3s ease;
    }
    .nav-link:hover {
      color: #ffc107 !important;
    }

    
    .hero-section {
      background-image: url('hotel.webp');
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

    .btn-primary {
      background-color: #00d1ff;
      border: none;
      font-weight: bold;
    }

    .btn-primary:hover {
      background-color: #00b8e6;
    }

    .form-text {
      color: #bbb;
    }

    body {
      margin: 0;
      padding: 0;
      font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    }
  </style>
</head>
<body>

<nav class="navbar navbar-expand-lg navbar-dark bg-danger">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">TechFira</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse justify-content-center" id="navbarNav">
      <ul class="navbar-nav">

        <!-- User Dropdown -->
        <li class="nav-item dropdown mx-2">
          <a class="nav-link dropdown-toggle active" href="#" role="button" data-bs-toggle="dropdown">
            User
          </a>
          <ul class="dropdown-menu">
            <li><a class="dropdown-item" href="UpdateUser.jsp">Update User</a></li>
            <li><a class="dropdown-item" href="DeleteUser.jsp">Delete User</a></li>
          </ul>
        </li>

        <!-- Room Dropdown -->
        <li class="nav-item dropdown mx-2">
          <a class="nav-link dropdown-toggle active" href="#" role="button" data-bs-toggle="dropdown">
            Room
          </a>
          <ul class="dropdown-menu">
            <li><a class="dropdown-item" href="RoomAdd.jsp">Add Room</a></li>
            <li><a class="dropdown-item" href="UpdateRoom.jsp">Update Room</a></li>
            <li><a class="dropdown-item" href="DeleteRoom.jsp">Delete Room</a></li>
          </ul>
        </li>

        <!-- Booking -->
        <li class="nav-item mx-2">
          <a class="nav-link active" href="BookingRoom.jsp">Booking Room</a>
        </li>

      </ul>
    </div>
  </div>
</nav>

<!-- 🌄 Background Hero Section with VIP Form -->
<div class="hero-section">
  <form action="DeleteUser" method="post" class="abc">
    <div class="mb-3">
      <label for="exampleInputEmail1" class="form-label text-light">Enter the Name which you want to Delete User Record </label>
      <input type="text" name="oldname" class="form-control" aria-describedby="emailHelp">
      
    </div>
    
    
    <button type="submit" class="btn btn-dark w-50">Click Here</button>
  </form>
</div>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
