
public class Persona {
    private String nome;
    private String cognome;
    private String email;
    private String password;
    
    public Persona(String n, String c, String e, String p){
        nome = n;
        cognome = c;
        email = e;
        password = p;
    }
    
    public String getNome(){ return nome; }
    public String getCognome(){ return cognome; }
    public String getEmail(){ return email; }
    public String getPassword(){ return password; }
}
