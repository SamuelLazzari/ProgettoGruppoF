
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "invia", urlPatterns = {"/invia"})
public class GestisciPersona extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        try{
            
            //leggo i parametri in arrivo dalla jsp iniziale
            String nomeUtente = request.getParameter("Nome_utente");
            String cognomeUtente = request.getParameter("cognome_Utente");
            String emailUtente = request.getParameter("Email");
            String passwordUtente = request.getParameter("Password");
            
            //controllo i valori, se errati riporto alla pagina index.jsp
            if(nomeUtente.isEmpty() || cognomeUtente.isEmpty()){
                request.getServletContext().getRequestDispatcher("/Homepage.jsp").forward(request, response);
                return;
            }
            
            //creo l'oggetto di tipo Persona per inviarlo più facilmente
            Persona p = new Persona(nomeUtente, cognomeUtente, emailUtente, passwordUtente);
            
            //assegno l'utente come parametro da inviare alla prossima JSP
            request.setAttribute("utente", p);
            
            //devo inoltrare la richiesta alla JSP finale (persona.jsp)
            request.getServletContext().getRequestDispatcher("/persona.jsp").forward(request, response);
            
        }catch(NumberFormatException errore){
            //se si verifica un errore riapro l'index.jsp
            request.getServletContext().getRequestDispatcher("/Homepage.jsp").forward(request, response);
        }
    }

}
