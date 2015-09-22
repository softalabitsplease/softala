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

	public void LisaaKoulutus(Koulutus koul) {
		int koulutus_id = 0;
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
			koulutus_id = yhteys.suoritaSqlLauseParametreilla(sql, uusiKoulutus);
			System.out.println(koulutus_id);
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println("VIRHE TIEDON LISÄYKSESSÄ");
		}
		try {
			int kouluttaja_id = 1;
			String sql = "insert into Koulutuksen_kouluttaja (koulutus_id, kouluttaja_id) values (?,?)";
			Yhteys yhteys = new Yhteys();
			yhteys.getYhteys();

			ArrayList uusiKoulutus = new ArrayList();
			uusiKoulutus.add(koulutus_id);
			uusiKoulutus.add(kouluttaja_id);
			yhteys.suoritaSqlLauseParametreilla(sql, uusiKoulutus);
			System.out.println(koulutus_id);

		} catch (Exception e) {
			System.out.println("VIRHE TIEDON LISÄYKSESSÄ");
		}

	}

}
