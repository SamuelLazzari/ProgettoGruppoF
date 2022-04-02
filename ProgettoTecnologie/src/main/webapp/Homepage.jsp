<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>HomePage</title>
        
        <link href="css/style.css" rel="stylesheet">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">

        <!-- File js -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
    </head>
    <body>
        <div id="container">
            <div class="row justify-content-center">
                <nav class="navbar sticky-top navbar-dark bg-dark">
                    <div class="container-fluid">
                        <a class="navbar-brand">Funzionalità: </a>
                        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon"></span>
                        </button>
                        <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
                            <div class="navbar-nav text-center">
                                <a class="nav-link" href="registrati.jsp">Registrati</a>
                                <a class="nav-link" href="accedi.jsp">Accedi</a>
                                <a class="nav-link" href="areaRiservata.jsp">Area Riservata</a>
                                <a class="nav-link" href="Prenota.jsp">Prenota</a>
                            </div>
                        </div>
                    </div>
                </nav>
            </div>
            <div class="row justify-content-center" style="margin-top: 15px;">
                <h3 style="text-align: center;">Funzionalità pagine:</h3>
                
                <div class="col-8 d-flex justify-content-center">
                    <ul>
                        <li>La pagina <i>Leggi</i> permette la consultazione dei dati presenti sul database</li>
                        <li>La pagina <i>Inserisci</i> permette l'inserimento nel database</li>
                        <li>La pagina <i>Modifica</i> permette l'aggiornamento di dati del database</li>
                        <li>La pagina <i>Rimuovi</i> permette la rimozione di dati dal database</li>
                    </ul>
                </div>
            </div>
        </div>
    </body>
</html>
