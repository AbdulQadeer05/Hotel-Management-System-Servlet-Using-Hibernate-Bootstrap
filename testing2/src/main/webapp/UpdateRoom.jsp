<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Update Room</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <!-- Bootstrap CSS -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
  
  <style>
    .navbar {
      box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
    }
    .nav-link {
      font-weight: bold;
      font-size: 1.1rem;
      transition: color 0.3s ease;
    }
    .nav-link:hover {
      color: #ffc107 !important;
    }
    .navbar-brand {
      font-size: 1.5rem;
      font-weight: bold;
      color: white;
    }
    .nav-center {
      margin: 0 auto;
    }
    .two{
       background-image: url(hotel.webp);
      background-attachment:fixed;
      height: 400px;
    width: 100%;
    background-size: cover;  
    background-repeat: no-repeat;
    background-position: 100%;
    }
    .text-center {
      text-align: center;
      padding-top: 300px;
      padding-left:100px;
      color: black;
      text-shadow: 1px 1px 3px rgba(0,0,0,0.7);
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
  <div class="container-fluid justify-content-center">
    <a class="navbar-brand me-5">TechFira</a>
    

    <div class="collapse navbar-collapse justify-content-center" id="navbarNav">
      <ul class="navbar-nav">

        <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle active" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                 User
                </a>
                <ul class="dropdown-menu">
                  <li><a class="dropdown-item" href="UpdateUser.jsp">Update User</a></li>
                  <li><a class="dropdown-item" href="DeleteUser.jsp">Delete User</a></li>
                </ul>
              </li>


               <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle active" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                  Room
                </a>
                <ul class="dropdown-menu">
                  <li><a class="dropdown-item" href="RoomAdd.jsp">Add Room</a></li>
                  <li><a class="dropdown-item" href="UpdateRoom.jsp">Update Room</a></li>
                  <li><a class="dropdown-item" href="DeleteRoom.jsp">Delete Room</a></li>
                 
                </ul>
              </li>

              
        
        <li class="nav-item mx-2">
          <a class="nav-link active" href="BookingRoom.jsp">Booking Room</a>
        </li>
      </ul>
      
    </div>
  </div>
</nav>

    <div class="two" style="width:1263px; height: 500px;">
      
      
      <div class="hero-section">
  <form action="UpdateRoom" method="post" class="abc">
    <div class="mb-3">
      <label for="exampleInputEmail1" class="form-label text-light">Enter the Old Name which you want to Update </label>
      <input type="text" name="oldName" class="form-control" aria-describedby="emailHelp">
      
    </div>
    <div class="mb-3">
      <label for="exampleInputPassword1" class="form-label text-light">Enter the New Name</label>
      <input type="text" name="newName" class="form-control">
    </div>
    
    <button type="submit" class="btn btn-primary w-100">Click Here</button>
  </form>
</div>
      

    </div>
    
    
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    
</body>
</html>
