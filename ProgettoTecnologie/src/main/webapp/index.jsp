<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Homepage</title>
        <!-- File css -->
        <link href="css/style.css" rel="stylesheet">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">

        <!-- File js -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
    </head>
    <body>
        <p style="background-image: url('sfondo.jpg');">
        <div id="container" style="margin-top: 15px;">
            <div class="row justify-content-center">
                <div class="col-6 d-flex justify-content-center">
                    <h2>Prenotazioni Tennis</h2>
                </div>
            </div>
            <div class="row justify-content-center">
                <div class="col-2 d-flex justify-content-center">
                    <form action="login" method="POST">
                        <input type="submit" class="btn btn-secondary" value="Login" />
                    </form>
                </div>
                <div class="col-2 d-flex justify-content-center">
                    <form action="registrati" method="POST">
                        <input type="submit" class="btn btn-secondary" value="Registrati" />
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>