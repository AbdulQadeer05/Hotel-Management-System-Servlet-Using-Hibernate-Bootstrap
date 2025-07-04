<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Add Room</title>
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
    
    

    
  </style>
</head>
<body>


    <div class="two" style="width:1263px; height: 500px;">
    
    
   <div class="hero-section">
  <form action="addRoom" method="post" class="abc">
    <div class="mb-3">
      <label for="exampleInputEmail1" class="form-label text-light">Enter the Room Name </label>
      <input type="text" name="roomName" class="form-control" aria-describedby="emailHelp">
      
    </div>
    <div class="mb-3">
      <label for="exampleInputPassword1" class="form-label text-light">Enter the Room Number</label>
      <input type="number" name="roomNo" class="form-control" placeholder="Type the Number">
    </div>
    
    <button type="submit" class="btn btn-primary w-100">Click Here</button>
  </form>
</div>
    
      

    </div>
    
   
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    
</body>
</html>
