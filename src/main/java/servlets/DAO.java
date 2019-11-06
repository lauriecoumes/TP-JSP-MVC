/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.LinkedList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.sql.DataSource;

/**
 *
 * @author pedago
 */
public class DAO {

    protected final DataSource myDataSource;

    public DAO(DataSource dataSource) {
        this.myDataSource = dataSource;
    }

    public List<DiscountEntity> discount_code() {
        List<DiscountEntity> codes = new LinkedList<>();

        String sql = "SELECT * FROM APP.DISCOUNT_CODE";

        try (Connection connection = myDataSource.getConnection(); // Ouvrir une connexion
                Statement stmt = connection.createStatement(); // On crée un statement pour exécuter une requête
                ResultSet rs = stmt.executeQuery(sql) // Un ResultSet pour parcourir les enregistrements du résultat
                ) {
            while (rs.next()) {
                String lettre = rs.getString("DISCOUNT_CODE");
                float taux = rs.getFloat("RATE");
                DiscountEntity ent = new DiscountEntity(lettre, taux);
                codes.add(ent);
            }

        } catch (SQLException ex) {
            Logger.getLogger("DAO").log(Level.SEVERE, null, ex);
        }
        
        return codes;
    }
    
    public void ajouterCode(String code, float taux) {
        String sql = "INSERT INTO APP.DISCOUNT_CODE VALUES (?, ?)";
        
        try (Connection connection = myDataSource.getConnection(); // Ouvrir une connexion
                PreparedStatement stmt = connection.prepareStatement(sql) // Un ResultSet pour parcourir les enregistrements du résultat
                ) {
            stmt.setString(1, code);
            stmt.setFloat(2, taux);
            
        } catch (SQLException ex) {
            Logger.getLogger("DAO").log(Level.SEVERE, null, ex);
        }
            
    }
}
