package dao;

import java.util.ArrayList;

import bean.Koulutus;
import tietokanta.Yhteys;


public class KoulutusLisaysDAO {
	
	private Yhteys yhteys = new Yhteys();

	public void avaaYhteys() {
		// LUODAAN YHTEYS OLIO, JOKA LUO AUTOMAATTISESTI YHTEYDEN

		yhteys.yhdista();
		System.out.println("Yhteys avattu.");

	}

	public void suljeYhteys() {
		// SULJETAAN AVATTU YHTEYS

		yhteys.katkaise();
		System.out.println("Yhteys suljettu.");
	}
	
	public void LisaaKoulutus (Koulutus koulutus){
		try {
			String sql = "insert into Koulutus (alkamisaika,pvm,aihe,paikka) values (?,?,?,?)";
			Yhteys yhteys = new Yhteys();
			yhteys.getYhteys();

			ArrayList uusiKoulutus = new ArrayList();
			uusiKoulutus.add(koulutus.getAlkamisaika());
			uusiKoulutus.add(koulutus.getPvm());
			uusiKoulutus.add(koulutus.getAihe());
			uusiKoulutus.add(koulutus.getPaikka());

			yhteys.suoritaSqlLauseParametreilla(sql, uusiKoulutus);
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println("VIRHE TIEDON LISÄYKSESSÄ");
		} finally {
			suljeYhteys();
		}

	}

}
