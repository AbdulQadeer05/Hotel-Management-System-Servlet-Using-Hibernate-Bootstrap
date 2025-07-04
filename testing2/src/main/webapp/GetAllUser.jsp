<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*, com.model.User" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>All Users</title>
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
      background-image: url('RoomDB1.jpg');
      background-size: cover;
      background-position: center;
      background-repeat: no-repeat;
      background-attachment: fixed;
      min-height: 100vh;
      display: flex;
      justify-content: center;
      align-items: center;
      padding: 50px 0;
    }

    .abc {
      background-color: rgba(44, 47, 51, 0.95);
      padding: 30px;
      border-radius: 15px;
      box-shadow: 0 10px 30px rgba(0, 0, 0, 0.8);
      width: 100%;
      max-width: 800px;
    }

    table {
      color: white;
    }

    th {
      background-color: #212529;
    }

    body {
      font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
      margin: 0;
      padding: 0;
    }
  </style>
</head>
<body>



<div class="hero-section">
  <div class="abc">
    <h3 class="text-center text-light mb-4">List of All Registered Users</h3>
    <table class="table table-bordered table-striped table-dark text-center">
      <thead>
        <tr>
          <th>ID</th>
          <th>Name</th>
          <th>Email</th>
          <th>Password</th>
        </tr>
      </thead>
      <tbody>
        <%
          List<User> users = (List<User>) request.getAttribute("users");

          if (users != null && !users.isEmpty()) {
            for (User u : users) {
        %>
        <tr>
          <td><%= u.getId() %></td>
          <td><%= u.getName() %></td>
          <td><%= u.getEmail() %></td>
          <td><%= u.getPassword() %></td>
        </tr>
        <%
            }
          } else {
        %>
        <tr>
          <td colspan="4" class="text-center">No users found.</td>
        </tr>
        <%
          }
        %>
      </tbody>
    </table>
  </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>