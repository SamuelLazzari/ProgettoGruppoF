
package Database;

import java.sql.Connection;
import java.sql.DriverManager;


public class DatabaseManager {
    private final String db_url = "jdbc:mysql://localhost:";
    private final int db_port = 3306;
    private final String db_name = "progettotecnologie";
    private final String user = "root";
    private final String pwd = "";
    private static DatabaseManager dbManager = null;
    
    private DatabaseManager(){}
    
    public static DatabaseManager generaIstanza(){
        if(dbManager == null){
            dbManager = new DatabaseManager();
        }
        return dbManager;
    }
    
    public Connection connetti() throws Exception{
        ///importare la classe Driver per connettersi al database
        Class.forName("com.mysql.cj.jdbc.Driver");
        
        ///Mi connetto al database
        return DriverManager.getConnection(db_url + db_port + db_name, user, pwd);
    }
    
}
