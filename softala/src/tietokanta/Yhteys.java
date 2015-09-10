package tietokanta;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


/**
 * Luokka sis‰lt‰‰ tietokantayhteyden, yhdist‰misen
 * ja katkaisemisen.
 * @author Jukka Harju, Jukka Juslin
 */
public class Yhteys {
    private Connection yhteys;

    public Yhteys() {
     
    }

    /**
     * Ottaa yhteyden tietokantaan.
     */
    public void yhdista() {
        // Syntaksi: jdbc:TYPE:machine:port/DB_NAME
        String url = "jdbc:mysql://localhost:3306/a1400204";

        // ladataan tietokanta-ajuri
        try {
            Class.forName("org.mariadb.jdbc.Driver");
        } catch (java.lang.ClassNotFoundException ex) {
            System.out.print("ClassNotFoundException: ");
            System.out.println(ex.getMessage());
        }

        try {
            // Otetaan yhteys tietokantaan
            yhteys =
                DriverManager.getConnection(
                    url, "a1400204", "kyDYTb53c");
        } catch (SQLException ex) {
            kasitteleVirhe(
                "Virhe tietokantayhteyden avaamisessa", ex);
        }
    }

    /**
     * Katkaistaan yhteys tietokantaan.
     */
    public void katkaise() {
        try {
            yhteys.close();
        } catch (SQLException ex) {
            kasitteleVirhe(
                "Virhe tietokantayhteyden sulkemisessa", ex);
        }
    }

    public Connection getYhteys() {
        if (yhteys == null) {
            yhdista();
        }

        return yhteys;
    }

    /**
     * Tulostaa SQL-virheen virheilmoituksen.
     *
     * @param selite
     *            Ohjelmoijan antama seliteteksti.
     * @param ex
     *            Viittausmuuttuja tarkempien
     *            virhetietojen n‰ytt‰miseen.
     */
    public static void kasitteleVirhe(
        String selite, SQLException ex) {
        System.out.println(selite);
        System.out.println("Message:   " + ex.getMessage());
        System.out.println("SQLState:  " + ex.getSQLState());
        System.out.println("ErrorCode: " + ex.getErrorCode());
    }
}