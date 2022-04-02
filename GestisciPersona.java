package Servlet;

import Database.DatabaseManager;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "gestiscipersona", urlPatterns = {"/gestiscipersona"})
public class GestisciPersona extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        try{
            
            //leggo i parametri in arrivo dalla jsp iniziale
            String nomeUtente = request.getParameter("Nome_utente");
            String cognomeUtente = request.getParameter("Cognome_utente");
            String emailUtente = request.getParameter("Email");
            String passwordUtente = request.getParameter("Password");
            String Data_nascita = request.getParameter("Data_nascita");
            
            //controllo i valori, se errati riporto alla pagina index.jsp
            if(nomeUtente.isEmpty() || cognomeUtente.isEmpty() || passwordUtente.isEmpty()){
                request.getServletContext().getRequestDispatcher("/Homepage.jsp").forward(request, response);
                return;
            }
            
            //creo l'oggetto di tipo Persona per inviarlo più facilmente
            
            
            Connection connessione = DatabaseManager.generaIstanza().connetti();
            String sql = "insert into persone(nome, cognome, email, password, data_nascita) values('nomeUtente', 'cognomeUtente', 'emailUtente', 'passwordUtente', 'Data_nascita')";
            
            Statement query = connessione.createStatement();
            ResultSet risultato=query.executeQuery(sql);
            while(risultato.next()){
                /*String nome = risultato.getString("nome");
                String cognome = risultato.getString("cognome");
                int eta = Integer.parseInt( risultato.getString("eta") );
                String nazione = risultato.getString("nazione");*/
                Persona p = new Persona(nomeUtente, cognomeUtente, emailUtente, passwordUtente, Data_nascita);
                request.setAttribute("persone", p);
                request.getServletContext().getRequestDispatcher("/persona.jsp").forward(request, response);
            }
            connessione.close();
            //assegno l'utente come parametro da inviare alla prossima JSP
            //request.setAttribute("utente", p);
            
            //devo inoltrare la richiesta alla JSP finale (persona.jsp)
            //request.getServletContext().getRequestDispatcher("/persona.jsp").forward(request, response);
            
        }catch(Exception errore){
            //se si verifica un errore riapro l'index.jsp
            request.getServletContext().getRequestDispatcher("/Homepage.jsp").forward(request, response);
        }
    }

}
