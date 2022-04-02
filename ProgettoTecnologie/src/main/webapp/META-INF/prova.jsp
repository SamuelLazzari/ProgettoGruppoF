<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>BeatSound</title>
        <!-- File css -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"; rel="stylesheet">

        <!-- File js -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
    </head>
    <body>
        <div id="container">
            <div class="row justify-content-center">
                <div class="col-6 d-flex justify-content-center">
                    <h2>BeatSound</h2>
                </div>
            </div>
            <div class="row justify-content-center">
                <div class="col-6 d-flex justify-content-center">
                    <p>Registrati a BeatSound</p>
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
                <form action="registrati" method="POST" class="was-validated">
                    <div class="row justify-content-center">
                        <div class="col-4 justify-content-center">
                            <input type="text" class="form-control" name="nickname_utente" placeholder="Scegli nickname" required><br>
                        </div>
                    </div>
                    <div class="row justify-content-center">
                        <div class="col-2 justify-content-center">
                            <input type="text" class="form-control" name="nome_utente" placeholder="Nome" required><br>  
                        </div> 
                        <div class="col-2 justify-content-center">
                            <input type="text" class="form-control" name="cognome_utente" placeholder="Cognome" required><br>  
                        </div> 
                    </div>  
                    <div class="row justify-content-center">
                        <div class="col-4 justify-content-center">
                            <input type="number" min="18" max="99" name="eta" class="form-control" placeholder="Inserisci età" required/><br />
                        </div>
                    </div>
                    <div class="row justify-content-center">
                        <div class="col-4 justify-content-center">
                            <input type="email" class="form-control" name="email" placeholder="Inserisci email" required><br>
                        </div>
                    </div>
                    <div class="row justify-content-center">
                        <div class="col-4 justify-content-center">
                            <input type="email" class="form-control" name="email2" placeholder="Ripeti email" required><br>
                        </div>
                    </div>                     
                    <div class="row justify-content-center">
                        <div class="col-4 justify-content-center">
                            <input type="password" class="form-control" name="password" placeholder="Inserisci password" required><br>   
                        </div> 
                    </div>  
                    <div class="row justify-content-center">
                        <div class="col-4 justify-content-center">
                            <input type="password" class="form-control" name="password2" placeholder="Ripeti password" required><br>   
                        </div> 
                    </div>
                    <div class="row justify-content-center">
                        <div class="col-4 justify-content-center">
                            <select name="nazionalita" class="form-control" required>
                                <option value="Italia">Italia</option>
                                <option value="Germania">Germania</option>
                                <option value="Francia">Francia</option>
                            </select><br />
                        </div>
                    </div>
                    <div class="row justify-content-center">
                        <div class="col-4 justify-content-center">
                            <p><b>Domanda di sicurezza.</b></p>
                            <select name="domanda" class="form-control" required>
                                <option value="animale">Il tuo primo animale domestico?</option>
                                <option value="scuola">Dove hai fatto la scuola media?</option>
                                <option value="mamma">Il nome di tua mamma?</option>
                                <option value="papa">Il nome di tuo papà?</option>
                            </select><br />
                        </div>
                    </div>
                    <div class="row justify-content-center">
                        <div class="col-4 justify-content-center">
                            <input type="text" class="form-control" placeholder="Attenzione! risposta necessaria per recupero password." name="risposta" required><br>
                        </div>
                    </div>   
                    <div class="col-12 d-flex justify-content-center">
                        <input type="submit" class="btn btn-secondary " value="Registrati"><br> 
                    </div>   
                </form>                       
            </div>
            <div class="row justify-content-center">
                <div class="col-12 d-flex justify-content-center">
                    <br>
                    <p>Sei già registrato? <a href="accedi.jsp">accedi</a> </p>      
                </div>
            </div>
        </div>    
    </body>       
</html>
