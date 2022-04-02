

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Prenotazione Campo</title>
        
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"; rel="stylesheet">

        
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
    </head>
    <body style="background-image:  url(https://www.redplus.eu/wp-content/uploads/2020/07/Foto-07-05-20-21-50-52-3.jpg)">
        <div id="container">
            <div class="row justify-content-center">
                <div class="col-6 d-flex justify-content-center"><br><br>
                    <h2> </h2>
                </div>
            </div>
            <div class="row justify-content-center">
                <div class="col-6 d-flex justify-content-center"><br><br>
                    <h2 style="color: yellow">REGISTRAZIONE UTENTE</h2>
                </div>
            </div>
            <div class="row justify-content-center">
                <div class="col-6 d-flex justify-content-center">
                    <p><b>Registrati</b></p>
                </div>
            </div>
            <%
                if(request.getAttribute("coloreMessaggio")!=null){
            %>
            <div class="row justify-content-center text-center" style="margin-top: 15px;">
                <p style="color: ${coloreMessaggio}">
                    ${messaggio}
                </p>
            </div>
            <%
                }
            %>
            <div class="row justify-content-center">
                <form action="gestiscipersona" method="POST">
                    
                    <div class="row justify-content-center">
                        <div class="col-4 justify-content-center">
                            <input type="text" class="form-control" name="Nome_utente" placeholder="Inserisci nome"><br>
                        </div>
                    </div>
                    
                    <div class="row justify-content-center">
                        <div class="col-4 justify-content-center">
                            <input type="text" class="form-control" name="Cognome_utente" placeholder="Inserisco cognome"><br>  
                        </div>
                    </div>
                    
                    <div class="row justify-content-center">
                        <div class="col-4 justify-content-center">
                            <input type="email" class="form-control" name="Email" placeholder="Inserisci Email"><br>  
                        </div> 
                    </div>    
                    
                    <div class="row justify-content-center">
                        <div class="col-4 justify-content-center">
                            <input type="password" class="form-control" name="Password" placeholder="Inserisci password"><br>   
                        </div> 
                    </div>
                    <div class="row justify-content-center">
                        <div class="col-4 justify-content-center">
                            <input type="date" class="form-control" name="Data_nascita" placeholder="Data di nascita"><br>   
                        </div> 
                    </div>  
                    <div class="col-12 d-flex justify-content-center">
                        <input type="submit" class="btn btn-secondary " value="Registrati"><br> 
                    </div>   
                </form>                       
            </div>
            <div class="row justify-content-center">
                <div class="col-20 d-flex justify-content-center">
                    <br><br><br><br><br><br><br><br><br><br><br><br><br>
                    <p style="color: yellow"><b>Sei già registrato? <a href="Accedi.jsp">ACCEDI</a></b></p>      
                </div>
            </div>
        </div>    
    </body>   
</html>
