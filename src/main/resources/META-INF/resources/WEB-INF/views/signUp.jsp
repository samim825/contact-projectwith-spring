<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>Login page</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>

    <style>
        .background{
            background-image: url("assets/img/bgImage.jpg");
        }
        .font-color{
            color: white;
        }
    </style>

</head>
<body class="background">

<div class="container">
    <div class="row">

        <div class="col-md-6 col-sm offset-3">
            <h2 align="center" class="font-color">Sign Up</h2>

            <form:form method="post" modelAttribute="userInfo">

                <form:hidden path="id"/>

                <div class="form-group">
                    <label for="name" class="font-color">Name :</label>
                    <form:input class="form-control"  placeholder="Enter your name" path="name" required="name"/>
                </div>
                <div class="form-group">
                    <label  class="font-color">Email :</label>
                    <form:input type="email" class="form-control"  placeholder="Enter your email" path="email" required="email"/>
                </div>
                <div class="form-group">
                    <label for="mobile" class="font-color">Mobile :</label>
                    <form:input  class="form-control"  placeholder="Enter your mobile" path="mobile" required="mobile"/>
                </div>
                <div class="form-group">
                    <label for="age" class="font-color">Age :</label>
                    <form:input type="number"  class="form-control"  placeholder="Enter your age" path="age" required="age"/>
                </div>
                <div class="form-group">
                    <label for="pwd" class="font-color">Password :</label>
                    <form:input type="password" class="form-control"  placeholder="Enter password" path="password" required="password"/>
                </div>

                <label for="image" class="font-color">Image :</label>
                <div class="custom-file">

                    <form:input type="file" class="custom-file-input" id="customFile" path="image" accept="image/x-png,image/jpg,image/jpeg" required="image"/>
                    <label class="custom-file-label" for="customFile">Choose image</label>
                </div><br><br>

                <form:button type="submit" class="btn btn-info btn-block">Sign in</form:button>
            </form:form>
        </div>
    </div>
</div>

<script>
    // Add the following code if you want the name of the file appear on select
    $(".custom-file-input").on("change", function() {
        var fileName = $(this).val().split("\\").pop();
        $(this).siblings(".custom-file-label").addClass("selected").html(fileName);
    });
</script>
</body>
</html>