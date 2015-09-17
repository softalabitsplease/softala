package dao;

import java.util.ArrayList;

import bean.Koulutus;
import tietokanta.Yhteys;


public class KoulutusLisaysDAO {
	
	private Yhteys yhteys = new Yhteys();

	public void avaaYhteys() {
		// LUODAAN YHTEYS OLIO, JOKA LUO AUTOMAATTISESTI YHTEYDEN
		yhteys.getYhteys();
		
		System.out.println("Yhteys avattu.");

	}
	
	public Yhteys getYhteys() {
		return yhteys;
	}

	public void setYhteys(Yhteys yhteys) {
		this.yhteys = yhteys;
	}

	public void suljeYhteys() {
		// SULJETAAN AVATTU YHTEYS

		yhteys.katkaise();
		System.out.println("Yhteys suljettu.");
	}
	
	public void LisaaKoulutus (Koulutus koul){
		try {
			String sql = "insert into Koulutus (alkamisaika,paattymisaika,paikka_id,aihe,opettaja_id) values (?,?,?,?,?)";
			Yhteys yhteys = new Yhteys();
			yhteys.getYhteys();

			ArrayList uusiKoulutus = new ArrayList();
			uusiKoulutus.add(koul.getAlkamisaika());
			uusiKoulutus.add(koul.getPaattymisaika());
			uusiKoulutus.add(koul.getPaikka());
			uusiKoulutus.add(koul.getAihe());
			uusiKoulutus.add(koul.getOpettaja());

			yhteys.suoritaSqlLauseParametreilla(sql, uusiKoulutus);
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println("VIRHE TIEDON LISÄYKSESSÄ");
		}
	}

}
