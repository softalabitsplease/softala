package dao;

import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.HashMap;

import bean.Koulutus;
import tietokanta.Kysely;
import tietokanta.Yhteys;

public class KoulutusHakuDAO {

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

	public ArrayList<Koulutus> haeKoulutukset() {
		Kysely kysely = new Kysely(yhteys.getYhteys());
		kysely.suoritaYksittainenKysely("SELECT * FROM koulutuksen_kouluttajat ko JOIN Koulutus k ON ko.koulutus_id = k.koulutus.id JOIN Kouluttaja kou ON ko.kouluttaja_id = kou.kouluttaja_id");
		ArrayList tulokset = kysely.getTulosjoukko();
		ArrayList<Koulutus> koulutukset = new ArrayList<Koulutus>();
		for (int i = 0; i < tulokset.size(); i++) {
			HashMap rivi = (HashMap) tulokset.get(i);
			int koulutus_id = Integer
					.parseInt((String) rivi.get("koulutus_id"));
			System.out.println(koulutus_id);
				String pvm = (String) rivi.get("pvm");
				System.out.println(pvm);
				String alkamisaika = (String) rivi.get("alkamisaika");
				String paattymisaika = (String) rivi.get("paattymisaika");
				int paikka = Integer.parseInt((String) rivi.get("paikka"));
				String aihe = (String) rivi.get("aihe");
				System.out.println(aihe);
				String kuvaus = (String) rivi.get("kuvaus");
				int opettaja = Integer.parseInt((String) rivi.get("opettaja"));
				System.out.println(opettaja);
				Koulutus koulutus = new Koulutus(koulutus_id, pvm, alkamisaika,
					paattymisaika, paikka, aihe, kuvaus, opettaja);
			koulutukset.add(koulutus);
		}
			return koulutukset;
		}

	}

