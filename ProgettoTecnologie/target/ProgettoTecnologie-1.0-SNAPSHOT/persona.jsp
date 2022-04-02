<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
        <link href="css/style.css" rel="stylesheet">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"; rel="stylesheet">

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>;
        <script src="https://code.jquery.com/jquery-3.6.0.js"></script>;
    </head>
    <body>
        <div id="container">
            <div class="row justify-content-center">
                <div class="col-6 d-flex justify-content-center">
                    <h2>Persona ricevuta</h2>
                </div>
            </div>
            <div class="row justify-content-center">
                <div class="col-6 d-flex justify-content-center">
                    <form action="invia" method="POST">
                        <div class="mb-3">
                            <input type="text" value="${utente.nome}" class="from-control" disabled/> <br/>
                            <input type="text" value="${utente.cognome}" class="from-control" disabled/> <br/>
                            <input type="text" value="${utente.eta}" class="from-control" disabled/> <br/>
                            <input type="text" value="${utente.nazione}" class="from-control" disabled/> </br>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>
