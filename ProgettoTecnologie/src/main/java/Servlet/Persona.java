package Servlet;

public class Persona {
    private String nome;
    private String cognome;
    private String email;
    private String password;
    private String DataNascita;
    
    public Persona(String n, String c, String e, String p, String DN){
        nome = n;
        cognome = c;
        email = e;
        password = p;
        DataNascita = DN;
    }
    
    public String getNome(){ return nome; }
    public String getCognome(){ return cognome; }
    public String getEmail(){ return email; }
    public String getPassword(){ return password; }
    public String getDataNascita(){ return DataNascita; }
}
