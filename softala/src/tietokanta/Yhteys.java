package tietokanta;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;


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
        String url = "jdbc:mysql://localhost:3306/a1400153";

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
                    url, "a1400153", "naPYH724w");
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
    
    public int suoritaSqlLauseParametreilla(String sqlLause,
			ArrayList<String> parametrit) {
		int tulokset = 0;
		int koulutus_id = 0;
		System.out.println("Paivitys.suoritaSqlLauseParametreilla()");
		System.out.println("JUKKA: " + sqlLause);

		try {
			System.out.println("sequel");
			PreparedStatement valmisteltuLause = yhteys
					.prepareStatement(sqlLause,Statement.RETURN_GENERATED_KEYS);
			System.out.println("prequel");
			for (int i = 0; i < parametrit.size(); i++) {
				valmisteltuLause.setObject(i + 1, parametrit.get(i));
			}

			System.out.println(valmisteltuLause);
			
			tulokset = valmisteltuLause.executeUpdate();
			ResultSet rs = valmisteltuLause.getGeneratedKeys();
			if (rs != null && rs.next()) {
			     koulutus_id = rs.getInt(1);
			     System.out.println();
			}
		} catch (SQLException ex) {
			Yhteys.kasitteleVirhe("Virhe kyselyn suorittamisessa.", ex);
		}
		return koulutus_id;
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