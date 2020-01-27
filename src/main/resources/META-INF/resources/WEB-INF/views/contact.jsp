<!DOCTYPE html>
<html lang="en">
<head>
  <title>Home page</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css" integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/" crossorigin="anonymous">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
  <!--  DataTables file-->
  <link rel='stylesheet' href="https://cdn.datatables.net/1.10.20/css/jquery.dataTables.min.css">
  <script src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js"></script>
  
  <style>
     
      .font-color{
          color: white;
      }
      .nav-link:hover {
          color: black;
          background-color:whitesmoke; 
          margin: 0;
          display: block;
      }
      .link:hover{
           color: tomato; 
           text-decoration: none;
          margin: 0;
      }
      
      
  </style>
  
</head>
<body>
<%@include file="header.jsp" %>
<div class="container">
    <br><br>
    <a href="" class="btn btn-md btn-primary float-right">Add new </a><br>
  <table class="table table-hover table-bordered table-striped" id="myTable">
      <h4 align="center">Contact List</h4>
      <thead>
          <tr>
              <th>SL No </th>
              <th>Name</th>
              <th>Mobile</th>
              <th>E-mail</th>
              <th>Address</th>
              <th>Action</th>
          </tr>
      </thead>
      <tbody>
          <% for(int i=1;i<=10;i++){ %>
          <tr>
              <td>01</td>
              <td>Samim</td>
              <td>01933245746</td>
              <td>samimhossain825@gmail.com</td>
              <td>Savar</td>
             <td><i class="fas fa-history"> </i>  <i class="fas fa-edit"></i>  <i class="fas fa-trash-alt"></i> </td>
          </tr>
          <% } %>
      </tbody>
  </table>
</div>
<%@include file="footer.jsp" %>
            <script>
      $(document).ready( function () {
    $('#myTable').DataTable();
} );
</script>
</body>
</html>


