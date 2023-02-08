package my.bean.classes;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 *
 * @author uldindrajith
 */
public class PropertyBean {
    
    private String id;
    private String type;
    private String location;
    private String owner;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public String getOwner() {
        return owner;
    }

    public void setOwner(String owner) {
        this.owner = owner;
    }
    
    public int connectDB() throws ClassNotFoundException, SQLException{
        String url = "jdbc:mysql://localhost:3306/property";
        Class.forName("com.mysql.jdbc.Driver");
        Connection con  = DriverManager.getConnection(url,"root","");
        PreparedStatement ps = con.prepareStatement("INSERT INTO propertytbl VALUES(?,?,?,?)");
        ps.setString(1, id);
        ps.setString(2, owner);
        ps.setString(3, location);
        ps.setString(4, type);
        int a = ps.executeUpdate();
        return a;
    }
    
}
